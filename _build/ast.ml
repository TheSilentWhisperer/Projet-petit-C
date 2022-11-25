type _include = Include of string
type ident = Ident of string

type loc = Lexing.position * Lexing.position

(*Déclaration des types*)
type _type = Void | Int | Bool | Pointer of _type

(*Déclaration des constantes*)
type const = Cint of int | Cbool of bool

(*Déclaration des opérateurs*)
type unop = Not | PreIncr | PreDecr | PostIncr | PostDecr | Address | Indirection | UPlus | UMinus | Sizeof

type binop = Assignement | Or | And | Eq | Neq | Lt | Leq | Gt | Geq | Plus | Minus | Mul | Div | Mod | Subscript 

(*Déclaration des expressions*)
type expr = { 
    desc : desc;
    loc : loc;
  }

and desc = 
  | NULL
  | Econst of const
  | Evar of ident
  | Eunop of unop * expr
  | Sizeof of _type
  | Ebinop of binop * expr * expr
  | Ecall of ident * expr list

(*Déclaration des déclarations*)
type decl_var = _type * ident * (expr option)

type instruction = 
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

(*Typage des expressions*)
exception TypeError of loc * string

type texpr = {
    tdesc : tdesc;
    typ : _type;
  }

and tdesc =
  | TEconst of const
  | TEvar of ident
  | TEunop of unop * texpr
  | TSizeof of _type
  | TEbinop of binop * texpr * texpr
  | TEcall of ident * texpr list

(*
let rec type_expr env e = 
  let d, ty = compute_type env e in
  { tdesc = d; typ = ty }

and compute_type env e = match e.desc with
  |
*)