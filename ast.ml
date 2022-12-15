type _include = Include of string
type ident = string

type loc = Lexing.position * Lexing.position

(*Déclaration des types*)
type _type = Void | Int | Bool | Pointer of _type

(*Déclaration des constantes*)
type const = Cint of int | Cbool of bool

(*Déclaration des opérateurs*)
type unop = Not | PreIncr | PreDecr | PostIncr | PostDecr | Address | Indirection | UPlus | UMinus  

type binop = Assignement | Or | And | Eq | Neq | Lt | Leq | Gt | Geq | Plus | Minus | Mul | Div | Mod

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
  _type : _type;
  ident : ident;
  params : (_type*ident) list;
  bloc : bloc;
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
  | Assignement -> "="
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
  return_type : _type;
  params_types : _type list;
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
  | t1, t2 when t1 = t2 -> true
  | t1, t2 -> if compatibles t2 t1 then true else false

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
      with 
      | Not_found -> raise (TypeError (e.expr_loc, i ^ " n'est pas déclaré"))
      | error -> raise error
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
      | Assignement ->
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
              if List.for_all2 (fun te t -> compatibles te.typ t) targs func_desc.params_types then
                TEcall (f, targs), func_desc.return_type
              else
                raise (TypeError (e.expr_loc, "Les arguments passés à la fonction " ^ f ^ " ne sont pas compatibles avec les types attendus"))
            end
        end
      with 
      | Not_found -> raise (TypeError (e.expr_loc, "la fonction " ^ f ^ " n'est pas déclarée"))
      | Invalid_argument _ -> raise (TypeError (e.expr_loc, "le nombre d'arguments passés à la fonction " ^ f ^ " est incorrect"))
      | error -> raise error
    end

(*typage des instructions et des blocs*)

type tdecl_var = _type * ident * texpr option
and tinstruction = 
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
  | TInstruction of tinstruction
and tdecl_fct = {
  t_type : _type;
  tident : ident;
  tparams : (_type * ident) list;
  mutable tbloc : tbloc;
}
and tbloc = tdecl_instr list

type tprogram = tdecl_fct list

let rec contient_main program = match program.program_desc with
  | [] -> false
  | d :: q when d.ident = "main" ->
    begin
      match d._type with
        | Int -> true
        | _ -> raise (TypeError (d.fct_loc, "le type de retour de la fonction main doit être le type int"))
    end
  | d :: q -> contient_main { program_desc = q; program_loc = program.program_loc }

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
  | Ifor (Some d, e, l, i1) -> type_instruction env return_type loop { i with instruction_desc = Ibloc([Decl_var d; Instruction {instruction_desc = Ifor (None, e, l, i1); instruction_loc = i.instruction_loc}])}
  | Ifor (None, None, l, i1) -> type_instruction env return_type loop { i with instruction_desc =  Ifor (None, Some ({expr_desc = Econst (Cbool true); expr_loc = i.instruction_loc}), l, i1)}
  | Ifor (None, Some e, l, i1) ->
    let te = type_expr env e in
    begin
      if compatibles te.typ Void then 
        raise (TypeError (e.expr_loc, "une condition booléenne était attendue"))
      else
        let tl = List.map (type_expr env) l in
        TIfor (te, tl, type_instruction env return_type true i1)
    end
  | Ibloc b -> TIbloc (type_bloc env return_type loop b)

and type_bloc env return_type loop b = match b with
  | [] -> []
  | Decl_var (t, i, None, loc)::b -> 
    begin
      if Expr_env.mem i local.expr_env then raise (TypeError (loc, "la variable " ^ i ^ " a déjà été déclarée"));
      if Func_env.mem i local.func_env then raise (TypeError (loc, "les noms de variables et de fonctions ne peuvent pas être identiques au sein d'un même bloc"));
      if compatibles t Void then raise (TypeError (loc, "les variables ne peuvent pas être de type void"));
      let new_local = { local with expr_env = Expr_env.add i t local.expr_env } in
      Tdecl_var (t, i, None) :: type_bloc global new_local return_type in_loop b
    end
  | Decl_var (t, i, Some e, loc)::b -> 
    begin
      if Expr_env.mem i local.expr_env then raise (TypeError (loc, "la variable " ^ i ^ " a déjà été déclarée"));
      if Func_env.mem i local.func_env then raise (TypeError (loc, "les noms de variables et de fonctions ne peuvent pas être identiques au sein d'un même bloc"));
      if compatibles t Void then raise (TypeError (loc, "les variables ne peuvent pas être de type void"));
      let new_local = { local with expr_env = Expr_env.add i t local.expr_env } in
      let te = type_expr global new_local e in
      if not (compatibles te.typ t) then raise (TypeError (e.expr_loc, "conversion implicite du type " ^string_of_type te.typ ^ " vers le type " ^ string_of_type t ^ " impossible"));
      Tdecl_var (t, i, Some te) :: type_bloc global new_local return_type in_loop b
    end
  | Instruction i::b -> TInstruction (type_instruction global local return_type in_loop i) :: type_bloc global local return_type in_loop b
  | Decl_fct f :: b -> 
    begin 
      if Expr_env.mem f.ident local.expr_env then raise (TypeError (f.fct_loc, "les noms de variables et de fonctions ne peuvent pas être identiques au sein d'un même bloc"));
      if Func_env.mem f.ident local.func_env then raise (TypeError (f.fct_loc, "la fonction " ^ f.ident ^ " a déjà été déclarée"));
      if not (params_valid f.params) then raise (TypeError (f.fct_loc, "les paramètres d'une fonction doivent avoir des noms différents"));
      let new_local = { local with func_env = Func_env.add f.ident {return_type = f._type ; args_types = List.map (fun (t,_) -> t) f.params} local.func_env} in
      let bf = (List.map (fun (t,i) -> Decl_var (t,i,None,f.fct_loc)) f.params) @ f.bloc in
      let tbf = type_bloc new_local empty_env f._type false bf in
      let tb = type_bloc global new_local return_type in_loop b in
      Tdecl_fct { t_type = f._type; tident = f.ident; tparams = f.params; tbloc = tbf } :: tb
    end

let type_program p =
  let local = { expr_env = Expr_env.empty; func_env = Func_env.empty } in
  if not (program_valid p.program_desc) then raise (TypeError (p.program_loc, "une fonction main doit être déclarée"));  
  let p_bloc = List.map (fun decl_fct -> Decl_fct decl_fct) p.program_desc in
  let local = { local with func_env = Func_env.add "malloc" {return_type = Pointer Void; args_types = [Int]} local.func_env} in
  let local = { local with func_env = Func_env.add "putchar" {return_type = Int; args_types = [Int]} local.func_env} in
  type_bloc empty_env local Void false p_bloc;
  
