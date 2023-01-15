open Ast
open X86_64

exception Error of string

let print_op op = match op with
| Plus -> print_string "+"
| Minus -> print_string "-"
| _ -> ()

(*affiche un type*)
let rec print_type t = match t with
  | Int -> print_string "int"
  | Bool -> print_string "bool"
  | Void -> print_string "void"
  | Pointer t -> print_string "*"; print_type t

let label_counter = ref 0

type allocating_env = (int*int) Env.t

let rec allocate_expr env e = 
  match e.texpr_desc with
  | TNULL -> { aexpr_desc = ANULL; atyp = e.typ }
  | TEconst c -> { aexpr_desc = AEconst c; atyp = e.typ }
  | TEvar i ->
    begin 
      try
        let depth, ofs = Env.find i env in
        { aexpr_desc = AEvar (depth, ofs); atyp = e.typ }
      with Not_found -> raise (Error "Variable non déclarée")
    end
  | TEunop (op, e1) ->
    let e' = allocate_expr env e1 in
    { aexpr_desc = AEunop (op, e'); atyp = e.typ }
  | TSizeof t ->
    { aexpr_desc = ASizeof t ; atyp = e.typ }
  | TEbinop (op, e1, e2) ->
    let e1' = allocate_expr env e1 in
    let e2' = allocate_expr env e2 in
    { aexpr_desc = AEbinop (op, e1', e2'); atyp = e.typ }
  | TEcall (i, el) ->
    let el' = List.map (allocate_expr env) el in
    let depth = 
      begin 
        try
          let depth, _ = Env.find i env in
          depth
        with Not_found -> 
          (*print everything inside env*)
          Env.iter (fun k v -> print_endline k; print_endline (string_of_int (fst v)); print_endline (string_of_int (snd v))) env;
          raise (Error ("Fonction " ^ i ^ " non déclarée"))
      end
    in 
    { aexpr_desc = AEcall (i, depth, el'); atyp = e.typ }
  
let rec allocate_instruction env func_depth frame_size i = match i with
  | TIskip -> AIskip
  | TIexpr e -> AIexpr (allocate_expr env e)
  | TIif (e, i1, i2) ->
    let e' = allocate_expr env e in
    let i1' = allocate_instruction env func_depth frame_size i1 in
    let i2' = allocate_instruction env func_depth frame_size i2 in
    AIif (e', i1', i2')
  | TIwhile (e, i) ->
    let e' = allocate_expr env e in
    let i' = allocate_instruction env func_depth frame_size i in
    AIwhile (e', i')
  | TIfor (e, el, i) ->
    let e' = allocate_expr env e in
    let el' = List.map (allocate_expr env) el in
    let i' = allocate_instruction env func_depth frame_size i in
    AIfor (e', el', i')
  | TIbloc b -> AIbloc (allocate_bloc env func_depth frame_size b)
  | TIreturn eo -> 
    let eo' = 
    begin match eo with
      | None -> None
      | Some e -> Some (allocate_expr env e) 
    end in
    AIreturn eo'
  | TIbreak -> AIbreak
  | TIcontinue -> AIcontinue
and allocate_bloc env func_depth frame_size b = match b with
  | [] -> []
  | Tdecl_fct f :: b -> 
    (*ajouter les offsets des paramètres à l'environnement du bloc de la fonction*)
    let rec aux env j params = 
      begin match params with
        | [] -> env
        | (t, i) :: q -> aux (Env.add i (func_depth+1, -j*8) env) (j+1) q
      end
    in 
    let env_fct_bloc = aux env 3 f.tfct_params in
    (*ignorer les premières instructions du bloc de la fonction correspondant à la redéclaration des paramètres*)
    let rec aux2 b i = 
      begin match b with
        | [] -> []
        | Tdecl_var _ :: q when i > 0 -> aux2 q (i-1)
        | _ -> b
      end
    in
    let tfct_bloc = aux2 f.tfct_bloc (List.length f.tfct_params) in
    let frame_size_max = ref 0 in
    let env_fct_bloc' = Env.add f.tfct_ident (func_depth+1, -1) env_fct_bloc in
    let afct_bloc = allocate_bloc env_fct_bloc' (func_depth+1) frame_size_max tfct_bloc in
    let afct = { 
      afct_ident = f.tfct_ident;
      afct_frame_size = !frame_size_max;
      afct_bloc = afct_bloc;
    } in
    let env' = Env.add f.tfct_ident (func_depth+1, !frame_size_max) env in
    Adecl_fct afct :: allocate_bloc env' func_depth frame_size b
  | Tdecl_var (t, i, eo) :: b ->
    let ao = 
      begin match eo with
        | None -> None
        | Some e -> Some (allocate_expr env e)
      end in

    (* augmenter la taille de la frame pour accueillir la nouvelle variable *)
    frame_size := !frame_size + 8;
    let env' = Env.add i (func_depth, !frame_size) env in
    let res = Adecl_var (func_depth, !frame_size, ao) in
    res :: allocate_bloc env' func_depth frame_size b
  | Tinstruction i :: b ->
    let ai = allocate_instruction env func_depth frame_size i in
    Ainstruction ai :: allocate_bloc env func_depth frame_size b

let allocate_program p = 
  (*ajouter putchar et malloc à l'environnement de départ*)
  let starting_env = Env.add "putchar" (0, 0) (Env.add "malloc" (0, 0) Env.empty) in
  let rec aux env p = begin match p with
    | [] -> []
    | f :: q ->
    (*ajouter les offsets des paramètres à l'environnement du bloc de la fonction*)
    let rec aux1 env j params = 
      begin match params with
        | [] -> env
        | (t, i) :: q -> aux1 (Env.add i (0, -j*8) env) (j+1) q
      end
    in 
    let env_fct_bloc = aux1 env 3 f.tfct_params in
    (*ignorer les premières instructions du bloc de la fonction correspondant à la redéclaration des paramètres*)
    let rec aux2 b i = 
      begin match b with
        | [] -> []
        | Tdecl_var _ :: q when i > 0 -> aux2 q (i-1)
        | _ -> b
      end
    in
    let tfct_bloc = aux2 f.tfct_bloc (List.length f.tfct_params) in
    let frame_size_max = ref 0 in
    let env_fct_bloc' = Env.add f.tfct_ident (0, -1) env_fct_bloc in
    let afct_bloc = allocate_bloc env_fct_bloc' 0 frame_size_max tfct_bloc in
    let afct = { 
      afct_ident = f.tfct_ident;
      afct_frame_size = !frame_size_max;
      afct_bloc = afct_bloc;
    } in
    let env' = Env.add f.tfct_ident (0, !frame_size_max) env in
    afct :: aux env' q 
  end in
  aux starting_env p

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
        pushq (ind ~ofs:(-ofs) rbp)
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
                let k = begin match e.atyp with
                  | Pointer _ -> 8
                  | _ -> 1
                end in
                begin match op with
                  | PreIncr ->
                    addq (imm k) (ind ~ofs:(-ofs) rbp) ++
                    pushq (ind ~ofs:(-ofs) rbp)
                  | PreDecr ->
                    subq (imm k) (ind ~ofs:(-ofs) rbp) ++
                    pushq (ind ~ofs:(-ofs) rbp)
                  | PostIncr ->
                    pushq (ind ~ofs:(-ofs) rbp) ++
                    addq (imm k) (ind ~ofs:(-ofs) rbp)
                  | PostDecr ->
                    pushq (ind ~ofs:(-ofs) rbp) ++
                    subq (imm k) (ind ~ofs:(-ofs) rbp)
                  | _ -> raise (Error "Impossible");
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
          | _ -> raise (Error "Impossible")
        end
      | Address ->
        begin match e.aexpr_desc with
          | AEvar (var_depth, ofs) ->
            (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
            movq (reg rbp) (reg rax) ++
            let rec aux depth =
              if depth = var_depth then
                leaq (ind ~ofs:(-ofs) rbp) rbx ++
                pushq (reg rbx)
              else
                movq (ind ~ofs:16 rbp) (reg rbp) ++
                aux (depth - 1)
            in aux func_depth ++
            (*on restaure la valeur de rbp*)
            movq (reg rax) (reg rbp)
          | AEunop (Indirection, p) ->
            compile_expr p func_depth
          | _ -> raise (Error "Impossible")
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
  | ASizeof t ->
    pushq (imm 8)
  | AEbinop (op, e1, e2) ->
    begin match op with
      | Assignment -> 
        compile_expr e2 func_depth ++
        begin match e1.aexpr_desc with
          | AEvar (var_depth, ofs) ->
            (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
            movq (reg rbp) (reg rax) ++
            let rec aux depth =
              if depth = var_depth then
                popq rbx ++
                movq (reg rbx) (ind ~ofs:(-ofs) rbp) ++
                pushq (reg rbx)
              else
                movq (ind ~ofs:16 rbp) (reg rbp) ++
                aux (depth - 1)
            in aux func_depth ++
            (*on restaure la valeur de rbp*)
            movq (reg rax) (reg rbp)
          | AEunop (Indirection, p) ->
            compile_expr p func_depth ++
            popq rax ++
            popq rbx ++
            movq (reg rbx) (ind rax) ++
            pushq (reg rbx)
          | _ -> raise (Error "Impossible")
        end
      | Or | And | Eq | Neq | Lt | Leq | Gt | Geq ->
        compile_expr e1 func_depth ++
        compile_expr e2 func_depth ++
        popq rbx ++
        popq rax ++
        begin match op with
          | Or ->
            cmpq (imm 0) (reg rax) ++
            setne (reg al) ++
            cmpq (imm 0) (reg rbx) ++
            setne (reg bl) ++
            orb (reg bl) (reg al) ++
            movzbq (reg al) rax
          | And ->
            cmpq (imm 0) (reg rax) ++
            setne (reg al) ++
            cmpq (imm 0) (reg rbx) ++
            setne (reg bl) ++
            andb (reg bl) (reg al) ++
            movzbq (reg al) rax
          | Eq ->
            cmpq (reg rbx) (reg rax) ++
            sete (reg al) ++
            movzbq (reg al) rax
          | Neq ->
            cmpq (reg rbx) (reg rax) ++
            setne (reg al) ++
            movzbq (reg al) rax
          | Lt ->
            cmpq (reg rbx) (reg rax) ++
            setl (reg al) ++
            movzbq (reg al) rax
          | Leq ->
            cmpq (reg rbx) (reg rax) ++
            setle (reg al) ++
            movzbq (reg al) rax
          | Gt ->
            cmpq (reg rbx) (reg rax) ++
            setg (reg al) ++
            movzbq (reg al) rax
          | Geq ->
            cmpq (reg rbx) (reg rax) ++
            setge (reg al) ++
            movzbq (reg al) rax
          | _ -> raise (Error "Impossible")
        end ++
        pushq (reg rax)
      | Plus | Minus | Mul ->
        compile_expr e1 func_depth ++
        compile_expr e2 func_depth ++
        popq rbx ++
        popq rax ++
        begin match e1.atyp, e2.atyp with
          | Pointer _, Int ->
            imulq (imm 8) (reg rbx) ++
            begin match op with
              | Plus -> addq (reg rbx) (reg rax)
              | Minus -> subq (reg rbx) (reg rax)
              | _ -> raise (Error "Impossible")
            end
          | Int, Pointer _ ->
            begin match op with
              | Plus -> addq (reg rbx) (reg rax)
              | _ -> raise (Error "Impossible")
            end
          | Pointer _, Pointer _ ->
            begin match op with
              | Minus -> subq (reg rbx) (reg rax) ++
                         cqto ++
                         idivq (imm 8)
              | _ -> raise (Error "Impossible")
            end
          | _ ->
            begin match op with
              | Plus -> addq (reg rbx) (reg rax)
              | Minus -> subq (reg rbx) (reg rax)
              | Mul -> imulq (reg rbx) (reg rax)
              | _ -> raise (Error "Impossible")
            end 
        end ++
        pushq (reg rax)
      | Div | Mod ->
        compile_expr e1 func_depth ++
        compile_expr e2 func_depth ++
        popq rbx ++
        popq rax ++
        cqto ++
        idivq (reg rbx) ++
        begin match op with
          | Div -> pushq (reg rax)
          | Mod -> pushq (reg rdx)
          | _ -> raise (Error "Impossible")
        end
    end
  | AEcall (f, depth, args) ->
    begin match f with
    | "malloc" -> 
      compile_expr (List.hd args) func_depth ++
      popq rdi ++
      andq (imm (-16)) (reg rsp) ++
      call "malloc" ++
      pushq (reg rax)
    | "putchar" ->
      compile_expr (List.hd args) func_depth ++
      popq rdi ++
      andq (imm (-16)) (reg rsp) ++
      call "putchar" ++
      pushq (reg rax)
    | _ ->
      List.fold_left (fun acc e -> compile_expr e func_depth ++ acc) nop args ++
      (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
      movq (reg rbp) (reg rax) ++
      let rec aux depth =
        if depth = func_depth + 1 then
          pushq (reg rbp)
        else
          movq (ind ~ofs:16 rbp) (reg rbp) ++
          aux (depth + 1)
      in aux depth ++
      (*on restaure la valeur de rbp*)
      movq (reg rax) (reg rbp) ++
      call f ++
      (*on restaure la pile*)
      addq (imm (8 * (List.length args + 1))) (reg rsp) ++
      pushq (reg rax)
    end

(*Crée un nouveau label qui n'existait pas avant*)
let new_label name =
  let l = "." ^ name ^ string_of_int !label_counter in
  label_counter := !label_counter + 1;
  l

(*Compile une instruction*)

let rec compile_instruction func_depth continue_label break_label i = match i with
  | AIskip -> nop
  | AIexpr e -> 
    compile_expr e func_depth ++ 
    popq rax
  | AIif (e, i1, i2) ->
    let else_label = new_label "else" in
    let endif_label = new_label "endif" in
    compile_expr e func_depth ++
    popq rax ++
    testq (reg rax) (reg rax) ++
    jz else_label ++
    compile_instruction func_depth continue_label break_label i1 ++
    jmp endif_label ++
    label else_label ++
    compile_instruction func_depth continue_label break_label i2 ++
    label endif_label
  | AIwhile (condition, i) ->
    let loop_label = new_label "loop" in
    let continue_label = new_label "continue" in
    let break_label = new_label "continue" in
    label loop_label ++
    compile_expr condition func_depth ++
    popq rax ++
    testq (reg rax) (reg rax) ++
    jz break_label ++
    compile_instruction func_depth continue_label break_label i ++
    label continue_label ++
    jmp loop_label ++
    label break_label
  | AIfor (condition, increments, i) ->
    let loop_label = new_label "loop" in
    let continue_label = new_label "continue" in
    let break_label = new_label "break" in
    label loop_label ++
    compile_expr condition func_depth ++
    popq rax ++
    testq (reg rax) (reg rax) ++
    jz break_label ++
    compile_instruction func_depth continue_label break_label i ++
    label continue_label ++
    let rec aux = function
      | [] -> nop
      | e :: l -> compile_expr e func_depth ++ popq rax ++ aux l  
    in aux increments ++
    jmp loop_label ++
    label break_label
  | AIreturn eo -> 
    begin match eo with
    | None ->
      movq (imm 0) (reg rax)
    | Some e ->
      compile_expr e func_depth ++
      popq rax
    end ++
    movq (reg rbp) (reg rsp) ++
    popq rbp ++
    ret
  | AIbloc b ->
    compile_bloc func_depth continue_label break_label b
  | AIcontinue ->
    jmp continue_label
  | AIbreak ->
    jmp break_label
and compile_bloc func_depth continue_label break_label b = match b with
  | [] -> nop
  | Adecl_fct f :: l ->
    let endfct_label = new_label "endfct" in
    jmp endfct_label ++
    label f.afct_ident ++
    pushq (reg rbp) ++
    movq (reg rsp) (reg rbp) ++
    subq (imm f.afct_frame_size) (reg rsp) ++
    compile_bloc (func_depth + 1) continue_label break_label f.afct_bloc ++
    movq (reg rbp) (reg rsp) ++
    popq rbp ++
    ret ++
    label endfct_label ++
    compile_bloc func_depth continue_label break_label l
  | Adecl_var (depth, offset, eo) :: l ->
    begin match eo with
    | None ->
      compile_bloc func_depth continue_label break_label l
    | Some e ->
      compile_expr e func_depth ++
      popq rax ++
      (* on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
      movq (reg rbp) (reg rbx) ++
      let rec aux i = 
        if i = depth then
          movq (reg rax) (ind ~ofs:(-offset) rbp)
        else
          movq (ind ~ofs:16 rbp) (reg rbp) ++
          aux (i + 1)
      in aux depth ++
      (*on restaure la valeur de rbp*)
      movq (reg rbx) (reg rbp) ++
      compile_bloc func_depth continue_label break_label l
    end
  | Ainstruction i :: l ->
    compile_instruction func_depth continue_label break_label i ++
    compile_bloc func_depth continue_label break_label l

let compile_program p =
  let rec aux = function
    | [] -> nop
    | f :: l -> 
      begin match f.afct_ident with
        | "main" -> 
          globl "main" ++
          label "main" ++
          pushq (reg rbp) ++
          movq (reg rsp) (reg rbp) ++
          subq (imm f.afct_frame_size) (reg rsp) ++
          compile_bloc 0 "continue" "break" f.afct_bloc ++
          movq (reg rbp) (reg rsp) ++
          popq rbp ++
          movq (imm 0) (reg rax) ++
          ret ++
          aux l
        | "putchar" | "malloc" ->
          aux l
        | i ->
          label i ++
          pushq (reg rbp) ++
          movq (reg rsp) (reg rbp) ++
          subq (imm f.afct_frame_size) (reg rsp) ++
          compile_bloc 0 "continue" "break" f.afct_bloc ++
          movq (reg rbp) (reg rsp) ++
          popq rbp ++
          ret ++
          aux l
      end
    in
  let text = aux p in
  {text = text; data = nop}
        
          