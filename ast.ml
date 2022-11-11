type _include = Include of string
type ident = Ident of string

(*Déclaration des types*)
type _type = Void | Int | Bool | Star of _type

(*Déclaration des constantes*)
type const = Cint of int | Cbool of bool

(*Déclaration des opérateurs*)
type unop = Not | Incr | Decr | Adress_of | Indirection | UPlus | UMinus

type binop = Assignement | Or | And | Eq | Neq | Lt | Le | Gt | Ge | Plus | Minus | Mul | Div | Mod | Subscript 

(*Déclaration des expressions*)
type expr =
  | EConst of const
  | Evar of ident
  | Eunop of unop * expr
  | Ebinop of binop * expr * expr

(*Déclaration des déclarations*)
type decl_var = Decl_var of _type * ident * expr option

type instruction = 
  | IFunc of decl_fct
  | IVar of decl_var
  | Iexpr of expr
  | Iif_else of expr * (instruction list) * (instruction list)
  | Iwhile of expr * (instruction list)
  | Ifor of decl_var option * expr option * (instruction list)
  | Ireturn of expr option
  | Ibreak
  | Icontinue

and decl_fct = {
  _type : _type;
  ident : ident;
  params : (ident * _type) list;
  bloc : instruction list; 
}


type program = {
  includes : _include list;
  decl_fcts : decl_fct list;
}