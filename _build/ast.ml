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
  args_types : _type list;
}

module Expr_env = Map.Make(struct type t = ident let compare = compare end)
module Func_env = Map.Make(struct type t = ident let compare = compare end)

type typing_env = {
  expr_env : _type Expr_env.t;
  func_env : fct_desc Func_env.t;
}

let empty_env = {
  expr_env = Expr_env.empty;
  func_env = Func_env.empty;
}

let f key m1 m2 = match m1, m2 with
  | Some x, Some y -> Some x
  | Some x, None -> Some x
  | None, Some y -> Some y
  | None, None -> None

let union_env env1 env2 = {
  expr_env = Expr_env.merge f env1.expr_env env2.expr_env;
  func_env = Func_env.merge f env1.func_env env2.func_env;
}

let rec is_lvalue e = match e.expr_desc with
  | Evar _ | Eunop(Indirection, _) -> true 
  | _ -> false

let rec compatibles t1 t2 = match t1, t2 with
  | Void, Void -> true
  | Int, Int -> true
  | Bool, Bool -> true
  | Pointer _, Pointer Void -> true
  | Pointer Void, Pointer _ -> true
  | Pointer t1, Pointer t2 -> egalite t1 t2
  | Int, Bool -> true
  | Bool, Int -> true
  | _ -> false
and egalite t1 t2 = match t1, t2 with
  | Void, Void -> true
  | Int, Int -> true
  | Bool, Bool -> true
  | Pointer t1, Pointer t2 -> egalite t1 t2
  | _ -> false
  

let rec type_expr global local e = 
  let d, ty = compute_type global local e in
  { texpr_desc = d; typ = ty }
and compute_type global local e = match e.expr_desc with
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
        TEvar i, Expr_env.find i local.expr_env
      with Not_found -> 
        begin 
          try
            let _ = TEvar i, Func_env.find i local.func_env in
            raise (TypeError(e.expr_loc, "la fonction " ^ i ^ " est utilisée comme une variable"))
          with Not_found -> 
            begin 
              try 
                TEvar i, Expr_env.find i global.expr_env
              with Not_found ->
                begin 
                  try
                    let _ = TEvar i, Func_env.find i global.func_env in
                    raise (TypeError(e.expr_loc, "la fonction " ^ i ^ " est utilisée comme une variable"))
                  with Not_found ->
                    raise (TypeError(e.expr_loc, "Variable " ^ i ^ " non déclarée"))
                end
            end
        end
    end
  | Sizeof Void -> raise (TypeError (e.expr_loc, "le type void n'a pas de taille"))
  | Sizeof t -> TSizeof t, Int
  | Eunop (op,e) ->
    begin 
      match op with 
      | Address -> 
        begin
          if not (is_lvalue e) then 
            raise (TypeError (e.expr_loc, "l'opérateur & doit être appliqué à une lvalue"));
          let te = type_expr global local e in
          TEunop (Address, te), Pointer te.typ
        end 
      | Indirection ->
        begin
          let te = type_expr global local e in
          match te.typ with
            | Pointer Void -> raise (TypeError (e.expr_loc, "un pointeur vers void ne peut pas être déréférencé"))
            | Pointer t -> TEunop (Indirection, te), t
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur unaire * doit être appliqué à un pointeur"))
        end
      | PreIncr | PreDecr | PostIncr | PostDecr ->
        begin
          if not (is_lvalue e) then
            raise (TypeError (e.expr_loc, "l'opérateur " ^ string_of_unop op ^ " n'accepte que des lvalue"));
          let te = type_expr global local e in
          TEunop (op, te), te.typ
        end
      | UPlus | UMinus ->
        begin
          let te = type_expr global local e in
          match te.typ with
            | t when compatibles t Int -> TEunop (op, te), Int
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur unaire " ^ string_of_unop op ^ " n'accepte que des entiers"))
        end
      | Not ->
        begin
          let te = type_expr global local e in
          match te.typ with
            | Void -> raise (TypeError (e.expr_loc, "l'opérateur unaire " ^ string_of_unop op ^ " n'accepte pas le type void"))
            | t -> TEunop (op, te), Int
        end
    end
  | Ebinop (op, e1, e2) ->
    begin 
      match op with
      | Assignement ->
        begin
          if not (is_lvalue e1) then 
            raise (TypeError (e.expr_loc, "l'opérateur = n'accepte que des lvalue comme opérande gauche"));
          let te1 = type_expr global local e1 and te2 = type_expr global local e2 in
          if not (compatibles te1.typ te2.typ) then 
            raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"))
          else TEbinop (Assignement, te1, te2), te1.typ
        end
      | Eq | Neq | Lt | Leq | Gt | Geq ->
        begin 
          let te1 = type_expr global local e1 and te2 = type_expr global local e2 in
          if not (compatibles te1.typ te2.typ) then
            raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"));
          if te1.typ = Void then
            raise (TypeError (e.expr_loc, "comparaison impossible avec le type void"));
          TEbinop (op, te1, te2), Int
        end
      | Mul | Div | Mod | Or | And -> 
        begin 
          let te1 = type_expr global local e1 and te2 = type_expr global local e2 in
          if not (compatibles te1.typ te2.typ) then
            raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"));
          match te1.typ with
            | t when not (compatibles t Int) -> raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type t ^ " vers le type " ^ string_of_type Int ^ " impossible"))
            | t when not (compatibles t te2.typ) -> raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type t ^ " impossible"))
            | t -> TEbinop (op, te1, te2), t
        end
      | Plus ->
        begin
          let te1 = type_expr global local e1 and te2 = type_expr global local e2 in
          match te1.typ, te2.typ with
            | Pointer t1, t2 when compatibles t2 Int -> TEbinop (Plus, te1, te2), Pointer t1
            | t1, Pointer t2 when compatibles t1 Int -> TEbinop (Plus, te1, te2), Pointer t1
            | t1, t2 when compatibles t1 Int && compatibles t2 Int -> TEbinop (Plus, te1, te2), Int
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur + n'accepte que des pointeurs et des entiers"))
        end
      | Minus ->
        begin
          let te1 = type_expr global local e1 and te2 = type_expr global local e2 in
          match te1.typ, te2.typ with
            | t1, t2 when compatibles t1 Int && compatibles t2 Int -> TEbinop (Minus, te1, te2), Int
            | Pointer t1, Pointer t2 when egalite t1 t2 -> TEbinop (Minus, te1, te2), Int
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur - n'accepte que des pointeurs et des entiers"))
        end
    end
  | Ecall (f, args) ->
    begin
      let fdesc =
        begin 
          try 
            Func_env.find f local.func_env 
          with Not_found -> 
            begin
              try
                let _ = Expr_env.find f local.expr_env in
                raise (TypeError (e.expr_loc, "l'identificateur " ^ f ^ " n'est pas une fonction"))
              with Not_found ->
                begin
                  try
                    Func_env.find f global.func_env
                  with Not_found ->
                    begin 
                      try
                        let _ = Expr_env.find f global.expr_env in
                        raise (TypeError (e.expr_loc, "l'identificateur " ^ f ^ " n'est pas une fonction"))
                      with Not_found ->
                        raise (TypeError (e.expr_loc, "la fonction " ^ f ^ " n'est pas déclarée"))
                    end
                end
            end 
        end in
      let targs = List.map (type_expr global local) args in 
      if List.length targs != List.length fdesc.args_types then
          raise (TypeError (e.expr_loc, "le nombre d'arguments de la fonction " ^ f ^ " est incorrect"));
      List.iter2 (fun t te -> if not (compatibles t te.typ) then raise (TypeError (e.expr_loc, "un argument du type " ^ string_of_type t ^ " était attendu mais un argument du type " ^ string_of_type te.typ ^ " a été donné"))) fdesc.args_types targs;
      TEcall (f, targs), fdesc.return_type 
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

let rec params_valid params = match params with
  | [] -> true
  | (t, i)::q -> not (List.exists (fun (_,qi) -> i = qi ) q) && params_valid q

let rec program_valid program_desc = match program_desc with
  | [] -> false
  | f :: q when f.ident = "main" ->
    begin
      match f._type with
        | Int -> true
        | _ -> raise (TypeError (f.fct_loc, "la fonction main doit retourner un entier"))
    end
  | f :: q -> program_valid q

let rec type_instruction global local return_type in_loop i = match i.instruction_desc with
  | Iskip -> TIskip
  | Iexpr e -> TIexpr (type_expr global local e)
  | Iif (e,i1) -> type_instruction global local return_type in_loop { i with instruction_desc = Iif_else (e, i1, { instruction_desc = Iskip; instruction_loc = i.instruction_loc }); }
  | Iif_else (e,i1,i2) -> 
    begin 
      if compatibles (type_expr global local e).typ Void then
        raise (TypeError (e.expr_loc, "la condition d'un if doit être de type booléen"));
      TIif (type_expr global local e, type_instruction global local return_type in_loop i1, type_instruction global local return_type in_loop i2)
    end
  | Iwhile (e,s) ->
    begin
      let te = type_expr global local e in
      if compatibles te.typ Void then raise (TypeError (e.expr_loc, "une condition booléenne était attendue"));
      TIwhile (te, type_instruction global local return_type true s)
    end
  | Ifor (Some d, e, l, s) -> type_instruction global local return_type in_loop { i with instruction_desc = Ibloc([Decl_var d; Instruction {instruction_desc = Ifor (None, e, l, s); instruction_loc = i.instruction_loc}])}
  | Ifor (None, None, l, i) -> type_instruction global local return_type in_loop { i with instruction_desc =  Ifor (None, Some ({expr_desc = Econst (Cbool true); expr_loc = i.instruction_loc}), l, i)}
  | Ifor (None, Some e, l, i) ->
    begin
      if compatibles (type_expr global local e).typ Void then raise (TypeError (e.expr_loc, "une condition booléenne était attendue"));
      TIfor (type_expr global local e, List.map (type_expr global local) l, type_instruction global local return_type true i)
    end
  | Ibloc b -> TIbloc (type_bloc (union_env global local) (empty_env) return_type in_loop b)
  | Ireturn None -> 
    begin
      if return_type != Void then raise (TypeError (i.instruction_loc, "une valeur de retour de type " ^ string_of_type return_type ^ " était attendue"));
      TIreturn None
    end
  | Ireturn (Some e) ->
    begin
      let te = type_expr global local e in
      if not (compatibles te.typ return_type) then raise (TypeError (e.expr_loc, "une valeur de retour de type " ^ string_of_type return_type ^ " était attendue"));
      TIreturn (Some te)
    end
  | Ibreak -> 
    begin match in_loop with
      | true -> TIbreak
      | false -> raise (TypeError (i.instruction_loc, "break doit être utilisé dans une boucle"))
    end
  | Icontinue ->
    begin match in_loop with
      | true -> TIcontinue
      | false -> raise (TypeError (i.instruction_loc, "continue doit être utilisé dans une boucle"))
    end
and type_bloc global (local : typing_env) return_type in_loop b = match b with
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
  
