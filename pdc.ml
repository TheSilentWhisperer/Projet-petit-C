open Ast
open X86_64

exception Error of string

let rec compile_expr e func_depth = match e.aexpr_desc with
  | ANULL ->
    pushq (imm 0)
  | AEconst c ->
    begin match c with
      | Cint n -> pushq (imm n)
      | Cbool b -> pushq (imm (if b then 1 else 0))
    end
  | AEvar (var_depth, ofs) ->
    (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
    movq (reg rbp) (reg rax) ++
    let rec aux depth =
      if depth = var_depth then
        pushq (ind ~ofs:ofs rbp)
      else
        movq (ind ~ofs:16 rbp) (reg rbp) ++
        aux (depth - 1)
    in aux func_depth ++
    (*on restaure la valeur de rbp*)
    movq (reg rax) (reg rbp)
  | AEunop (op, e) ->
    begin match op with
      | Not ->
        compile_expr e func_depth ++
        popq rax ++
        cmpq (imm 0) (reg rax) ++
        sete (reg al) ++
        movzbq (reg al) rax ++
        pushq (reg rax)
      | PreIncr | PreDecr | PostIncr | PostDecr ->
        begin match e.aexpr_desc with
          | AEvar (var_depth, ofs) ->
            (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
            movq (reg rbp) (reg rax) ++
            let rec aux depth =
              if depth = var_depth then
                begin match op with
                  | PreIncr ->
                    addq (imm 1) (ind ~ofs:ofs rbp) ++
                    pushq (ind ~ofs:ofs rbp)
                  | PreDecr ->
                    subq (imm 1) (ind ~ofs:ofs rbp) ++
                    pushq (ind ~ofs:ofs rbp)
                  | PostIncr ->
                    pushq (ind ~ofs:ofs rbp) ++
                    addq (imm 1) (ind ~ofs:ofs rbp)
                  | PostDecr ->
                    pushq (ind ~ofs:ofs rbp) ++
                    subq (imm 1) (ind ~ofs:ofs rbp)
                  | _ -> raise (Error "Impossible")
                end
              else
                movq (ind ~ofs:16 rbp) (reg rbp) ++
                aux (depth - 1)
            in aux func_depth ++
            (*on restaure la valeur de rbp*)
            movq (reg rax) (reg rbp)
          | AEunop (Indirection, p) ->
            let k = 
              begin match p.atyp with
                | Int | Bool | Void -> 1
                | Pointer _ -> 8
              end
            in
            compile_expr p func_depth ++
            popq rax ++
            begin match op with
              | PreIncr ->
                addq (imm k) (ind ~ofs:0 rax) ++
                pushq (ind ~ofs:0 rax)
              | PreDecr ->
                subq (imm k) (ind ~ofs:0 rax) ++
                pushq (ind ~ofs:0 rax)
              | PostIncr ->
                pushq (ind ~ofs:0 rax) ++
                addq (imm k) (ind ~ofs:0 rax)
              | PostDecr ->
                pushq (ind ~ofs:0 rax) ++
                subq (imm k) (ind ~ofs:0 rax)
              | _ -> raise (Error "Impossible")
            end
        end
      | Address ->
        begin match e.aexpr_desc with
          | AEvar (var_depth, ofs) ->
            (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
            movq (reg rbp) (reg rax) ++
            let rec aux depth =
              if depth = var_depth then
                leaq (ind ~ofs:ofs rbp) rbx ++
                pushq (reg rbx)
              else
                movq (ind ~ofs:16 rbp) (reg rbp) ++
                aux (depth - 1)
            in aux func_depth ++
            (*on restaure la valeur de rbp*)
            movq (reg rax) (reg rbp)
          | AEunop (Indirection, p) ->
            compile_expr p func_depth
        end
      | Indirection ->
        compile_expr e func_depth ++
        popq rax ++
        pushq (ind ~ofs:0 rax)
      | UPlus | UMinus ->
        compile_expr e func_depth ++
        popq rax ++
        begin match op with
          | UPlus -> pushq (reg rax)
          | UMinus -> negq (reg rax) ++
                      pushq (reg rax)
          | _ -> raise (Error "Impossible")
        end
    end
  | AEbinop (op, e1, e2) ->
    begin match op with
      | Assignment -> 
        begin match e1.aexpr_desc with
          | AEvar (var_depth, ofs) ->
            (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
            movq (reg rbp) (reg rax) ++
            let rec aux depth =
              if depth = var_depth then
                compile_expr e2 func_depth ++
                popq rbx ++
                movq (reg rbx) (ind ~ofs:ofs rbp) ++
                pushq (reg rbx)
              else
                movq (ind ~ofs:16 rbp) (reg rbp) ++
                aux (depth - 1)
            in aux func_depth ++
            (*on restaure la valeur de rbp*)
            movq (reg rax) (reg rbp)
          | AEunop (Indirection, p) ->
            compile_expr e2 func_depth ++
            popq rbx ++
            compile_expr p func_depth ++
            popq rax ++
            movq (reg rbx) (ind rax) ++
            pushq (reg rbx)
        end
