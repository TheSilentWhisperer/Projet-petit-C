
(* The type of tokens. *)

type token = 
  | WHILE
  | VOID
  | USTAR
  | UPLUS
  | UMINUS
  | Tint of (int)
  | Tinclude
  | Tident of (Ast.ident)
  | TRUE
  | STAR
  | SIZEOF
  | SEMICOLON
  | RPAR
  | RETURN
  | RBRACKET
  | RBRACE
  | PLUSPLUS
  | PLUS
  | OR
  | NULL
  | NOT
  | NEQ
  | MOD
  | MINUSMINUS
  | MINUS
  | LT
  | LPAR
  | LEQ
  | LBRACKET
  | LBRACE
  | INT
  | IF
  | GT
  | GEQ
  | FOR
  | FALSE
  | EQEQ
  | EQ
  | EOF
  | ELSE
  | DIV
  | CONTINUE
  | COMMA
  | BREAK
  | BOOL
  | AND
  | AMPERSAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val fichier: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.program)
