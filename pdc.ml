open Ast
open X86_64

exception Error of string

type allocating_env = (int*int) Env.t

let rec allocate_expr env e = match e.texpr_desc with
  | TNULL -> { aexpr_desc = ANULL; atyp = e.typ }
  | TEconst c -> { aexpr_desc = AEconst c; atyp = e.typ }
  | TEvar i ->
    begin 
      try
        let depth, ofs = Env.find i env in
        { aexpr_desc = AEvar (depth, ofs); atyp = e.typ }
      with Not_found -> raise (Error "Variable non déclarée")
    end
  | TEunop (op, e) ->
    let e' = allocate_expr env e in
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
        with Not_found -> raise (Error "Fonction non déclarée")
      end
    in 
    { aexpr_desc = AEcall ((i, depth), el'); atyp = e.typ }
  
let rec allocate_instruction env instruction_depth frame_size i = match i with
  | TIskip -> AIskip
  | TIexpr e -> AIexpr (allocate_expr env e)
  | TIif (e, i1, i2) ->
    let e' = allocate_expr env e in
    let i1' = allocate_instruction env instruction_depth frame_size i1 in
    let i2' = allocate_instruction env instruction_depth frame_size i2 in
    AIif (e', i1', i2')
  | TIwhile (e, i) ->
    let e' = allocate_expr env e in
    let i' = allocate_instruction env instruction_depth frame_size i in
    AIwhile (e', i')
  | TIfor (e, el, i) ->
    let e' = allocate_expr env e in
    let el' = List.map (allocate_expr env) el in
    let i' = allocate_instruction env instruction_depth frame_size i in
    AIfor (e', el', i')
  | TIbloc b -> AIbloc (allocate_bloc env instruction_depth frame_size b)
  | TIreturn eo -> 
    let eo' = 
    begin match eo with
      | None -> None
      | Some e -> Some (allocate_expr env e) 
    end in
    AIreturn eo'
  | TIbreak -> AIbreak
  | TIcontinue -> AIcontinue
and allocate_bloc env bloc_depth frame_size b = match b with
  | [] -> []
  | Tdecl_fct f :: b -> 
    (*ajouter les offsets des paramètres à l'environnement du bloc de la fonction*)
    let rec aux env j params = 
      begin match params with
        | [] -> env
        | (t, i) :: q -> aux (Env.add i (bloc_depth+1, j*8) env) (j+1) q
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
    let frame_size_max = ref 8 in
    let afct_bloc = allocate_bloc env_fct_bloc (bloc_depth+1) frame_size_max tfct_bloc in
    let afct = { 
      afct_ident = f.tfct_ident;
      afct_bloc = afct_bloc;
    } in
    let env' = Env.add f.tfct_ident (bloc_depth+1, !frame_size_max) env in
    Adecl_fct afct :: allocate_bloc env' bloc_depth frame_size b
  | Tdecl_var (t, i, eo) :: b ->
    let ao = 
      begin match eo with
        | None -> None
        | Some e -> Some (allocate_expr env e)
      end in
    let env' = Env.add i (bloc_depth, !frame_size) env in
    frame_size := !frame_size + 8;
    Adecl_var (t, i, ao) :: allocate_bloc env' bloc_depth frame_size b
  | Tinstruction i :: b ->
    let ai = allocate_instruction env bloc_depth frame_size i in
    Ainstruction ai :: allocate_bloc env bloc_depth frame_size b

let allocate_program p = 
  let rec aux env p = begin match p with
    | [] -> []
    | f :: q ->
      (*ajouter les offsets des paramètres à l'environnement du bloc de la fonction*)
    let rec aux1 env j params = 
      begin match params with
        | [] -> env
        | (t, i) :: q -> aux1 (Env.add i (0, j*8) env) (j+1) q
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
    let frame_size_max = ref 8 in
    let afct_bloc = allocate_bloc env_fct_bloc 0 frame_size_max tfct_bloc in
    let afct = { 
      afct_ident = f.tfct_ident;
      afct_bloc = afct_bloc;
    } in
    let env' = Env.add f.tfct_ident (0, !frame_size_max) env in
    Adecl_fct afct :: aux env' q 
  end in
  aux Env.empty p

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
          | _ -> raise (Error "Impossible")
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
          | _ -> raise (Error "Impossible")
        end
      | Or | And | Eq | Neq | Lt | Leq | Gt | Geq ->
        compile_expr e1 func_depth ++
        compile_expr e2 func_depth ++
        popq rbx ++
        popq rax ++
        begin match op with
          | Or ->
            orq (reg rbx) (reg rax) ++
            cmpq (imm 0) (reg rax) ++
            setne (reg al) ++
            movzbq (reg al) rax
          | And ->
            andq (reg rbx) (reg rax) ++
            cmpq (imm 0) (reg rax) ++
            setne (reg al) ++
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
        begin match op with
          | Plus -> addq (reg rbx) (reg rax)
          | Minus -> subq (reg rbx) (reg rax)
          | Mul -> imulq (reg rbx) (reg rax)
          | _ -> raise (Error "Impossible")
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
  | AEcall ((f, depth), args) ->
    begin match f with
    | "malloc" -> 
      compile_expr (List.hd args) func_depth ++
      popq rdi ++
      xorq (imm (-16)) (ind rsp) ++
      call "malloc" ++
      pushq (reg rax)
    | "putchar" ->
      compile_expr (List.hd args) func_depth ++
      popq rdi ++
      xorq (imm (-16)) (ind rsp) ++
      call "putchar" ++
      pushq (reg rax)
    | _ ->
      List.fold_left (fun acc e -> compile_expr e func_depth ++ acc) nop args ++
      let rec aux depth =
        if depth = func_depth + 1 then
          pushq (reg rbp)
        else
          (*on sauvegarde la valeur de rbp pour parcourir les rbps parents*)
          movq (reg rbp) (reg rax) ++
          movq (ind ~ofs:16 rbp) (reg rbp) ++
          aux (depth + 1)
      in aux depth ++
      (*on restaure la valeur de rbp*)
      movq (reg rax) (reg rbp) ++
      call f
    end


