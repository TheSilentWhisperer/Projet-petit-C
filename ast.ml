type _include = Include of string
type ident = string

type loc = Lexing.position * Lexing.position

(*Déclaration des types*)
type _type = Void | Int | Bool | Pointer of _type

(*Déclaration des constantes*)
type const = Cint of int | Cbool of bool

(*Déclaration des opérateurs*)
type unop = Not | PreIncr | PreDecr | PostIncr | PostDecr | Address | Indirection | UPlus | UMinus  

type binop = Assignment | Or | And | Eq | Neq | Lt | Leq | Gt | Geq | Plus | Minus | Mul | Div | Mod

(*Déclaration des expressions*)
type expr = { 
    expr_desc : expr_desc;
    expr_loc : loc;
  }
and expr_desc = 
  | NULL
  | Econst of const
  | Evar of ident
  | Eunop of unop * expr
  | Sizeof of _type
  | Ebinop of binop * expr * expr
  | Ecall of ident * expr list

(*Déclaration des déclarations*)
type decl_var = _type * ident * (expr option) * loc

type instruction = {
    instruction_desc : instruction_desc;
    instruction_loc : loc;
  }
and instruction_desc =
  | Iskip
  | Iexpr of expr
  | Iif of expr * instruction
  | Iif_else of expr * instruction * instruction
  | Iwhile of expr * instruction
  | Ifor of (decl_var option) * (expr option) * (expr list) * instruction
  | Ibloc of bloc
  | Ireturn of expr option
  | Ibreak
  | Icontinue
and decl_instr = 
  | Decl_fct of decl_fct
  | Decl_var of decl_var
  | Instruction of instruction
and decl_fct = {
  fct_return_type : _type;
  fct_ident : ident;
  fct_params : (_type*ident) list;
  fct_bloc : bloc;
  fct_loc : loc; 
}
and bloc = decl_instr list

type program = {
  program_desc : decl_fct list;
  program_loc : loc;
 }

(*Typage*)
exception TypeError of loc * string

let rec string_of_type = function
  | Void -> "void"
  | Int -> "int"
  | Bool -> "bool"
  | Pointer t -> string_of_type t ^ "*"

let string_of_unop = function
  | Not -> "!"
  | PreIncr -> "++"
  | PreDecr -> "--"
  | PostIncr -> "++"
  | PostDecr -> "--"
  | Address -> "&"
  | Indirection -> "*"
  | UPlus -> "+"
  | UMinus -> "-"

let string_of_binop = function
  | Assignment -> "="
  | Or -> "||"
  | And -> "&&"
  | Eq -> "=="
  | Neq -> "!="
  | Lt -> "<"
  | Leq -> "<="
  | Gt -> ">"
  | Geq -> ">="
  | Plus -> "+"
  | Minus -> "-"
  | Mul -> "*"
  | Div -> "/"
  | Mod -> "%"

(*Typage des expressions*)
type texpr = {
    texpr_desc : texpr_desc;
    typ : _type;
  }
and texpr_desc =
  | TNULL
  | TEconst of const
  | TEvar of ident
  | TEunop of unop * texpr
  | TSizeof of _type
  | TEbinop of binop * texpr * texpr
  | TEcall of ident * texpr list

type fct_desc = 
{
  fct_return_type : _type;
  fct_params_types : _type list;
}

module Env = Map.Make(struct type t = ident let compare = compare end)

type type_or_func_desc = Type of _type | Func_desc of fct_desc  

type typing_env = type_or_func_desc Env.t

let rec is_lvalue e = match e.expr_desc with
  | Evar _ | Eunop(Indirection, _) -> true 
  | _ -> false

let rec compatibles t1 t2 = match t1, t2 with
  | Int, Bool -> true
  | Bool, Int -> true
  | Int, Int -> true
  | Bool, Bool -> true
  | Pointer Void, Pointer _ -> true
  | Pointer _, Pointer Void -> true
  | t1, t2 when t1 = t2 -> true
  | _ -> false

let rec type_expr env e = 
  let d, ty = compute_type env e in
  { texpr_desc = d; typ = ty }
and compute_type env e = match e.expr_desc with
  | NULL -> TNULL, Pointer Void
  | Econst c -> 
    begin
      match c with
        | Cint _ -> TEconst c, Int
        | Cbool _ -> TEconst c, Bool
    end
  | Evar i -> 
    begin
      try
        begin 
          match Env.find i env with
          | Type t -> TEvar i, t
          | Func_desc _ -> raise (TypeError (e.expr_loc, i ^ " est une fonction mais une variable est attendue"))
        end
      with Not_found -> raise (TypeError (e.expr_loc, i ^ " n'est pas déclaré"))
    end
  | Sizeof t ->
    begin
    if compatibles t Void then 
      raise (TypeError (e.expr_loc, "sizeof(void) n'est pas défini"))
    else
      TSizeof t, Int
    end
  | Eunop (op,e) ->
    begin 
      match op with 
      | Address -> 
        begin
          if is_lvalue e then 
            let te = type_expr env e in 
            TEunop (Address, te), Pointer te.typ
          else
            raise (TypeError (e.expr_loc, "l'opérateur unaire & n'accepte que des lvalue"))
        end 
      | Indirection ->
        let te = type_expr env e in
        begin
          match te.typ with
          | Pointer t when compatibles t Void -> raise (TypeError (e.expr_loc, "l'opérateur unaire * n'accepte pas les pointeurs vers void "))
          | Pointer t -> TEunop (Indirection, te), t
          | _ -> raise (TypeError (e.expr_loc, "l'opérateur unaire * n'accepte que des pointeurs"))
        end
      | PreIncr | PreDecr | PostIncr | PostDecr ->
        begin
          if is_lvalue e then 
            let te = type_expr env e in
            TEunop (op, te), te.typ
          else
            raise (TypeError (e.expr_loc, "l'opérateur unaire " ^ string_of_unop op ^ " n'accepte que des lvalue"))
        end
      | UPlus | UMinus ->
        let te = type_expr env e in
        begin
          match te.typ with
          | t when compatibles t Int -> TEunop (op, te), Int
          | _ -> raise (TypeError (e.expr_loc, "l'opérateur unaire " ^ string_of_unop op ^ " n'accepte pas le type " ^ string_of_type te.typ))
        end
      | Not ->
        let te = type_expr env e in
        begin
          match te.typ with
            | t when compatibles t Void -> raise (TypeError (e.expr_loc, "l'opérateur unaire " ^ string_of_unop op ^ " n'accepte pas le type void"))
            | t -> TEunop (op, te), Int
        end
    end
  | Ebinop (op, e1, e2) ->
    begin   
      match op with
      | Assignment ->
        begin
          if is_lvalue e1 then
            let te1 = type_expr env e1 and te2 = type_expr env e2 in
            begin
              if compatibles te1.typ te2.typ then
                TEbinop (op, te1, te2), te1.typ
              else
                raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"))
            end
          else
            raise (TypeError (e.expr_loc, "l'opérateur binaire " ^ string_of_binop op ^ " n'accepte que des lvalue"))
        end
      | Eq | Neq | Lt | Leq | Gt | Geq ->
        let te1 = type_expr env e1 in
        begin 
          if compatibles te1.typ Void then
            raise (TypeError (e.expr_loc, "l'opérateur binaire " ^ string_of_binop op ^ " n'accepte pas le type void"))
          else
            let te2 = type_expr env e2 in
            begin 
              if compatibles te1.typ te2.typ then
                TEbinop (op, te1, te2), Int
              else
                raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"))
            end
        end
      | Mul | Div | Mod | Or | And ->  
        let te1 = type_expr env e1 in
        begin 
          if compatibles te1.typ Int then 
            let te2 = type_expr env e2 in
            begin 
              if compatibles te1.typ te2.typ then
                TEbinop (op, te1, te2), Int
              else
                raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"))
            end
          else
            raise (TypeError (e.expr_loc, "l'opérateur binaire " ^ string_of_binop op ^ " n'accepte pas le type " ^ string_of_type te1.typ))
        end
      | Plus ->
        let te1 = type_expr env e1 and te2 = type_expr env e2 in
        begin
          match compatibles te1.typ Int, compatibles te2.typ Int with
          | true, _ -> 
            begin 
              match te2.typ with
              | t2 when compatibles t2 te1.typ -> TEbinop (Plus, te1, te2), Int
              | Pointer t2 -> TEbinop (Plus, te2, te1), Pointer t2
              | _ -> raise (TypeError (e.expr_loc, "impossible d'ajouter un entier à un type " ^ string_of_type te2.typ))
            end
          | _, true ->
            begin 
              match te1.typ with
              | t1 when compatibles t1 te2.typ -> TEbinop (Plus, te2, te1), Int
              | Pointer t1 -> TEbinop (Plus, te1, te2), Pointer t1
              | _ -> raise (TypeError (e.expr_loc, "impossible d'ajouter un entier à un type " ^ string_of_type te1.typ))
            end
          | false, false ->
            raise (TypeError (e.expr_loc, "Au moins une des deux opérandes de l'opérateur + doit être un entier"))
        end
      | Minus ->
        let te1 = type_expr env e1 and te2 = type_expr env e2 in
        begin
          match te1.typ, te2.typ with
          | t1, t2 when compatibles t1 Int && compatibles t1 t2 -> TEbinop (Minus, te1, te2), Int
          | Pointer t1, Pointer t2 when t1 = t2 -> TEbinop (Minus, te1, te2), Int
          | _ -> raise (TypeError (e.expr_loc, "impossible de soustraire un type " ^ string_of_type te2.typ ^ " à un type " ^ string_of_type te1.typ))
        end
    end
  | Ecall (f, args) ->
    begin
      try
        begin 
          match Env.find f env with
          | Type _ -> raise (TypeError (e.expr_loc, "l'identificateur " ^ f ^ " est une variable mais une fonction était attendue"))
          | Func_desc func_desc -> 
            begin 
              let targs = List.map (type_expr env) args in
              if List.for_all2 (fun te t -> compatibles te.typ t) targs func_desc.fct_params_types then
                TEcall (f, targs), func_desc.fct_return_type
              else
                raise (TypeError (e.expr_loc, "Les arguments passés à la fonction " ^ f ^ " ne sont pas compatibles avec les types attendus"))
            end
        end
      with 
      | Not_found -> raise (TypeError (e.expr_loc, "la fonction " ^ f ^ " n'est pas déclarée"))
      | Invalid_argument _ -> raise (TypeError (e.expr_loc, "le nombre d'arguments passés à la fonction " ^ f ^ " est incorrect"))
    end

(*typage des instructions et des blocs*)

type tdecl_var = _type * ident * texpr option

type tinstruction = 
  | TIskip
  | TIexpr of texpr
  | TIif of texpr * tinstruction * tinstruction
  | TIwhile of texpr * tinstruction
  | TIfor of texpr * texpr list * tinstruction
  | TIbloc of tbloc
  | TIreturn of texpr option
  | TIbreak
  | TIcontinue
and tdecl_instr =
  | Tdecl_fct of tdecl_fct
  | Tdecl_var of tdecl_var
  | Tinstruction of tinstruction
and tdecl_fct = {
  tfct_return_type : _type;
  tfct_ident : ident;
  tfct_params : (_type * ident) list;
  mutable tfct_bloc : tbloc;
}
and tbloc = tdecl_instr list

type tprogram = tdecl_fct list

module Local = Set.Make(struct type t = ident let compare = compare end)

let rec type_instruction env return_type loop i = match i.instruction_desc with
  | Iskip -> TIskip
  | Iexpr e -> TIexpr (type_expr env e)
  | Ireturn None -> 
    begin
      if return_type = Void then
        TIreturn None
      else
        raise (TypeError (i.instruction_loc, "la fonction doit retourner un type " ^ string_of_type return_type))
    end
  | Ireturn (Some e) ->
    let te = type_expr env e in
    begin
      if compatibles te.typ return_type then
        TIreturn (Some te)
      else
        raise (TypeError (i.instruction_loc, "la fonction doit retourner un type " ^ string_of_type return_type))
    end
  | Iif (e,i1) -> type_instruction env return_type loop { i with instruction_desc = Iif_else (e, i1, { instruction_desc = Iskip; instruction_loc = i.instruction_loc }); }
  | Iif_else (e,i1,i2) -> 
    let te = type_expr env e in
    begin 
      if compatibles te.typ Void then
        raise (TypeError (e.expr_loc, "la condition d'un if doit être compatible avec un booléen"));
      TIif (te, type_instruction env return_type loop i1, type_instruction env return_type loop i2)
    end
  | Ibreak ->
    begin
      if loop then
        TIbreak
      else
        raise (TypeError (i.instruction_loc, "break doit être utilisé dans une boucle"))
    end
  | Icontinue ->
    begin
      if loop then
        TIcontinue
      else
        raise (TypeError (i.instruction_loc, "continue doit être utilisé dans une boucle"))
    end
  | Iwhile (e,i1) -> 
    let te = type_expr env e in
    begin 
      if compatibles te.typ Void then 
        raise (TypeError (e.expr_loc, "une condition booléenne était attendue"))
      else
        TIwhile (te, type_instruction env return_type true i1)
    end
  | Ifor (Some d, eo, l, i1) -> type_instruction env return_type loop {i with instruction_desc = Ibloc [Decl_var d; Instruction {i with instruction_desc = Ifor (None, eo, l, i1)}]}
  | Ifor (None, None, l, i1) -> type_instruction env return_type loop {i with instruction_desc = Ifor (None, Some ({expr_desc = Econst (Cbool true); expr_loc = i.instruction_loc}), l, i1)}
  | Ifor (None, Some e, l, i1) ->
    let te = type_expr env e in
    begin
      if compatibles te.typ Void then 
        raise (TypeError (e.expr_loc, "une condition booléenne était attendue"))
      else
        let tl = List.map (type_expr env) l in
        TIfor (te, tl, type_instruction env return_type true i1)
    end
  | Ibloc b -> TIbloc (type_bloc env Local.empty return_type loop b)

and type_bloc env locally_used_idents return_type loop b = match b with
  | [] -> []
  | Decl_var (t, i, None, loc) :: q -> 
    begin 
      if compatibles t Void then
        raise (TypeError (loc, "le type d'une variable ne peut pas être void"))
      else
        begin 
          if Local.mem i locally_used_idents then
            raise (TypeError (loc, "la variable " ^ i ^ " est déjà déclarée dans ce bloc"))
          else
           Tdecl_var (t, i, None) :: type_bloc (Env.add i (Type t) env) (Local.add i locally_used_idents) return_type loop q
        end
    end
  | Decl_var (t, i, Some e, loc) :: q -> 
    begin 
      if compatibles t Void then
        raise (TypeError (loc, "le type d'une variable ne peut pas être void"))
      else
        begin 
          if Local.mem i locally_used_idents then
            raise (TypeError (loc, "la variable " ^ i ^ " est déjà déclarée dans ce bloc"))
          else
            let te = type_expr env e in
            begin
              if compatibles te.typ t then
                Tdecl_var (t, i, Some te) :: type_bloc (Env.add i (Type t) env) (Local.add i locally_used_idents) return_type loop q
              else
                raise (TypeError (loc, "le type de l'expression n'est pas compatible avec le type de la variable"))
            end
        end
    end
  | Decl_fct f :: q ->
    begin
      if Local.mem f.fct_ident locally_used_idents then
        raise (TypeError (f.fct_loc, "la variable" ^ f.fct_ident ^ " est déjà déclarée dans ce bloc"))
      else
        let new_env = Env.add f.fct_ident (Func_desc { fct_return_type = f.fct_return_type; fct_params_types = List.map fst f.fct_params }) env in
        let tbf = type_bloc new_env Local.empty f.fct_return_type loop (List.fold_left (fun acc (t, i) -> Decl_var (t, i, None, f.fct_loc) :: acc) f.fct_bloc f.fct_params) in
        Tdecl_fct { tfct_return_type = f.fct_return_type; tfct_ident = f.fct_ident; tfct_params = f.fct_params; tfct_bloc = tbf } :: type_bloc new_env (Local.add f.fct_ident locally_used_idents) return_type loop q
    end
  | Instruction i :: q -> Tinstruction (type_instruction env return_type loop i) :: type_bloc env locally_used_idents return_type loop q

  let rec contient_main program = match program.program_desc with
  | [] -> false
  | d :: q when d.fct_ident = "main" ->
    begin
      match d.fct_return_type with
        | Int -> true
        | _ -> raise (TypeError (d.fct_loc, "le type de retour de la fonction main doit être le type int"))
    end
  | d :: q -> contient_main { program_desc = q; program_loc = program.program_loc }

let type_program p =
  let starting_env = Env.empty in
  let starting_env = Env.add "malloc" (Func_desc { fct_return_type = Pointer Void; fct_params_types = [Int] }) starting_env in
  let starting_env = Env.add "putchar" (Func_desc { fct_return_type = Int; fct_params_types = [Int] }) starting_env in 
  begin 
    if contient_main p then
      let program_bloc = List.map (fun f -> Decl_fct f) p.program_desc in
      let tprogram_bloc = type_bloc starting_env (Local.add "putchar" (Local.singleton "malloc")) Void false program_bloc in
      List.map (fun d -> match d with Tdecl_fct f -> f | _ -> exit 2) tprogram_bloc
    else
      raise (TypeError (p.program_loc, "le programme doit contenir une fonction main"))
  end

(*une position c'est un couple (profondeur, offset)*)
type var_pos = int*int


type aexpr = { 
  atyp : _type;
  aexpr_desc : aexpr_desc;
}
and aexpr_desc =
  | ANULL
  | AEconst of const
  | AEvar of var_pos
  | AEunop of unop * aexpr
  | ASizeof of _type
  | AEbinop of binop * aexpr * aexpr
  | AEcall of (ident * int) * aexpr list

type adecl_var = _type * ident * aexpr option

type ainstruction =
  | AIskip
  | AIexpr of aexpr
  | AIif of aexpr * ainstruction * ainstruction
  | AIwhile of aexpr * ainstruction
  | AIfor of aexpr * aexpr list * ainstruction
  | AIbloc of abloc
  | AIreturn of aexpr option
  | AIbreak 
  | AIcontinue 
and adecl_instr = 
  | Adecl_fct of adecl_fct
  | Adecl_var of adecl_var
  | Ainstruction of ainstruction
and adecl_fct = {
  afct_ident : ident;
  afct_bloc : abloc;
}
and abloc = adecl_instr list

type aprogram = adecl_fct list