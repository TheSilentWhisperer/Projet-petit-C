type _include = Include of string
type ident = Ident of string

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
}

and bloc = decl_instr list

type program = decl_fct list

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

let string_of_ident = function
  | Ident s -> s

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
        TEvar i, Expr_env.find i env.expr_env
      with Not_found -> raise (TypeError(e.expr_loc, "Variable " ^ string_of_ident i ^ " non déclarée"))
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
          let te = type_expr env e in
          TEunop (Address, te), Pointer te.typ
        end 
      | Indirection ->
        begin
          let te = type_expr env e in
          match te.typ with
            | Void -> raise (TypeError (e.expr_loc, "le type void ne peut être déréférencé"))
            | Pointer t -> TEunop (Indirection, te), t
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur unaire * doit être appliqué à un pointeur"))
        end
      | PreIncr | PreDecr | PostIncr | PostDecr ->
        begin
          if not (is_lvalue e) then
            raise (TypeError (e.expr_loc, "l'opérateur " ^ string_of_unop op ^ " n'accepte que des lvalue"));
          let te = type_expr env e in
          TEunop (op, te), te.typ
        end
      | UPlus | UMinus ->
        begin
          let te = type_expr env e in
          match te.typ with
            | t when compatibles t Int -> TEunop (op, te), Int
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur unaire " ^ string_of_unop op ^ " n'accepte que des entiers"))
        end
      | Not ->
        begin
          let te = type_expr env e in
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
          let te1 = type_expr env e1 and te2 = type_expr env e2 in
          if not (compatibles te1.typ te2.typ) then 
            raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"))
          else TEbinop (Assignement, te1, te2), te1.typ
        end
      | Eq | Neq | Lt | Leq | Gt | Geq ->
        begin 
          let te1 = type_expr env e1 and te2 = type_expr env e2 in
          if not (compatibles te1.typ te2.typ) then
            raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"));
          if te1.typ == Void then
            raise (TypeError (e.expr_loc, "comparaison impossible avec le type void"));
          TEbinop (op, te1, te2), Int
        end
      | Mul | Div | Mod | Or | And -> 
        begin 
          let te1 = type_expr env e1 and te2 = type_expr env e2 in
          if not (compatibles te1.typ te2.typ) then
            raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type te1.typ ^ " impossible"));
          match te1.typ with
            | t when not (compatibles t Int) -> raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type t ^ " vers le type " ^ string_of_type Int ^ " impossible"))
            | t when not (compatibles t te2.typ) -> raise (TypeError (e.expr_loc, "conversion implicite du type " ^ string_of_type te2.typ ^ " vers le type " ^ string_of_type t ^ " impossible"))
            | t -> TEbinop (op, te1, te2), t
        end
      | Plus ->
        begin
          let te1 = type_expr env e1 and te2 = type_expr env e2 in
          match te1.typ, te2.typ with
            | Pointer t1, t2 when compatibles t2 Int -> TEbinop (Plus, te1, te2), Pointer t1
            | t1, Pointer t2 when compatibles t1 Int -> TEbinop (Plus, te1, te2), Pointer t1
            | t1, t2 when compatibles t1 Int && compatibles t2 Int -> TEbinop (Plus, te1, te2), Int
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur + n'accepte que des pointeurs et des entiers"))
        end
      | Minus ->
        begin
          let te1 = type_expr env e1 and te2 = type_expr env e2 in
          match te1.typ, te2.typ with
            | Pointer t1, t2 when compatibles t2 Int -> TEbinop (Minus, te1, te2), Pointer t1
            | t1, Pointer t2 when compatibles t1 Int -> TEbinop (Minus, te1, te2), Pointer t1
            | t1, t2 when compatibles t1 Int && compatibles t2 Int -> TEbinop (Minus, te1, te2), Int
            | Pointer t1, Pointer t2 when egalite t1 t2 -> TEbinop (Minus, te1, te2), Int
            | _ -> raise (TypeError (e.expr_loc, "l'opérateur - n'accepte que des pointeurs et des entiers"))
        end
    end
  | Ecall (f, args) ->
    begin
      let fdesc = try Func_env.find f env.func_env with Not_found -> raise (TypeError (e.expr_loc, "la fonction " ^ string_of_ident f ^ " n'est pas déclarée")) in
      let targs = List.map (type_expr env) args in 
      if List.length targs != List.length fdesc.args_types then
          raise (TypeError (e.expr_loc, "le nombre d'arguments de la fonction " ^ string_of_ident f ^ " est incorrect"));
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
  tparams : (ident * _type) list;
  mutable tbloc : tbloc;
}

and tbloc = tdecl_instr list

let rec loop_valid i =
  contains_break i && contains_continue i
and contains_break i = match i.instruction_desc with
  | Ibreak -> true
  | Iif (_, i1) -> contains_break i1
  | Iif_else (_, i1, i2) -> contains_break i1 || contains_break i2
  | Iwhile (_, i) -> contains_break i
  | Ibloc b -> contains_break_bloc b 
  | _ -> false
and contains_break_bloc b = match b with
  | [] -> false
  | Decl_var _ :: b -> contains_break_bloc b
  | Instruction i :: b -> contains_break i || contains_break_bloc b
  | Decl_fct _ :: b -> contains_break_bloc b
and contains_continue i = match i.instruction_desc with
  | Icontinue -> true
  | Iif (_, i1) -> contains_continue i1
  | Iif_else (_, i1, i2) -> contains_continue i1 || contains_continue i2
  | Iwhile (_, i) -> contains_continue i
  | Ibloc b -> contains_continue_bloc b 
  | _ -> false
and contains_continue_bloc b = match b with
  | [] -> false
  | Decl_var _ :: b -> contains_continue_bloc b
  | Instruction i :: b -> contains_continue i || contains_continue_bloc b
  | Decl_fct _ :: b -> contains_continue_bloc b

let rec type_instruction env return_type i = match i.instruction_desc with
  | Iskip -> TIskip
  | Iexpr e -> TIexpr (type_expr env e)
  | Iif (e,i1) -> type_instruction env return_type { i with instruction_desc = Iif_else (e, i1, { instruction_desc = Iskip; instruction_loc = i.instruction_loc }); }
  | Iif_else (e,i1,i2) -> 
    begin 
      if compatibles (type_expr env e).typ Void then
        raise (TypeError (e.expr_loc, "la condition d'un if doit être de type booléen"));
      TIif (type_expr env e, type_instruction env return_type i1, type_instruction env return_type i2)
    end
  | Iwhile (e,s) ->
    begin
      if compatibles (type_expr env e).typ Void then raise (TypeError (e.expr_loc, "une condition booléenne était attendue"));
      if not (loop_valid s) then raise (TypeError (e.expr_loc, "la boucle while doit contenir un break ou un continue"));
      TIwhile (type_expr env e, type_instruction env return_type s)
    end
  | Ifor (Some d, e, l, s) -> type_instruction env return_type { i with instruction_desc = Ibloc([Decl_var d; Instruction {instruction_desc = Ifor (None, e, l, s); instruction_loc = i.instruction_loc}])}
  | Ifor (None, None, l, i) -> type_instruction env return_type { i with instruction_desc =  Ifor (None, Some ({expr_desc = Econst (Cbool true); expr_loc = i.instruction_loc}), l, i)}
  | Ifor (None, Some e, l, i) ->
    begin
      if compatibles (type_expr env e).typ Void then raise (TypeError (e.expr_loc, "une condition booléenne était attendue"));
      if not (loop_valid i) then raise (TypeError (e.expr_loc, "la boucle for doit contenir un break ou un continue"));
      TIfor (type_expr env e, List.map (type_expr env) l, type_instruction env return_type i)
    end
  | Ibloc b -> TIbloc (type_bloc env return_type b)
  | Ireturn None -> 
    begin
      if return_type != Void then raise (TypeError (i.instruction_loc, "une valeur de retour de type " ^ string_of_type return_type ^ " était attendue"));
      TIreturn None
    end
  | Ireturn (Some e) ->
    begin
      let te = type_expr env e in
      if not (compatibles te.typ return_type) then raise (TypeError (e.expr_loc, "une valeur de retour de type " ^ string_of_type return_type ^ " était attendue"));
      TIreturn (Some te)
    end
  | Ibreak -> TIbreak
  | Icontinue -> TIcontinue
and type_bloc env return_type b = match b with
  | [] -> []
  | Decl_var (t, i, None, loc)::b -> 
    begin
      if compatibles t Void then raise (TypeError (loc, "les variables ne peuvent pas être de type void"));
      let new_env = { env with expr_env = Expr_env.add i t env.expr_env } in
      Tdecl_var (t, i, None) :: type_bloc new_env return_type b
    end
  | Decl_var (t, i, Some e, loc)::b -> 
    begin
      if compatibles t Void then raise (TypeError (loc, "les variables ne peuvent pas être de type void"));
      let new_env = { env with expr_env = Expr_env.add i t env.expr_env } in
      let te = type_expr new_env e in
      if not (compatibles te.typ t) then raise (TypeError (e.expr_loc, "conversion implicite du type " ^string_of_type te.typ ^ " vers le type " ^ string_of_type t ^ " impossible"));
      Tdecl_var (t, i, Some te) :: type_bloc new_env return_type b
    end
  | Instruction i::b -> TInstruction (type_instruction env return_type i) :: type_bloc env return_type b