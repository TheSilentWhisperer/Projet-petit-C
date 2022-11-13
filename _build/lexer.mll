{
    open Ast
    open Parser
    exception Lexing_error of string
}

let chiffre = ['0'-'9']
let alpha = ['a'-'z'] | ['A'-'Z']
let ident = (alpha | "_") (alpha | chiffre | "_")*
let caractere = [' '-'&' '('-'[' ']'-'~']
let entier_chiffres = '0' | ['1'-'9'] chiffre*
let entier_caractere = "'" caractere "'"
let entier = entier_chiffres | entier_caractere
let espace = " " | "\t" 
let include = "#include" espace* "<" [' '-'&' '('- '=' '?'-'[' ']'-'~']* ">" "\n" 


rule token = parse
| eof {EOF}
| espace+ {token lexbuf}
| "\n" {Lexing.new_line lexbuf; token lexbuf}
| include {Lexing.new_line lexbuf; Tinclude}
| "bool" {BOOL}
| "break" {BREAK}
| "continue" {CONTINUE}
| "else" {ELSE}
| "false" {FALSE}
| "for" {FOR}
| "if" {IF}
| "int" {INT}
| "NULL" {NULL}
| "return" {RETURN}
| "sizeof" {SIZEOF}
| "true" {TRUE}
| "void" {VOID}
| "while" {WHILE}
| "(" {LPAR}
| ")" {RPAR}
| "{" {LBRACE}
| "}" {RBRACE}
| "[" {LBRACKET}
| "]" {RBRACKET}
| "," {COMMA}
| ";" {SEMICOLON}
| "==" {EQEQ}
| "=" {EQ}
| "!=" {NEQ}
| "<" {LT}
| "<=" {LEQ}
| ">" {GT}
| ">=" {GEQ}
| "+" {PLUS}
| "-" {MINUS}
| "*" {STAR}
| "/" {DIV}
| "%" {MOD}
| "++" {PLUSPLUS}
| "--" {MINUSMINUS}
| "&&" {AND}
| "||" {OR}
| "!" {NOT}
| "&" {AMPERSAND}
| "/*" {comment lexbuf}
| "//" {line_comment lexbuf}
| ident as i {Tident (Ident i)}
| chiffre as c {Tint (int_of_char c)}
| entier_chiffres as i {Tint (int_of_string i)}
| entier_caractere as c {Tint (int_of_char c.[1])}
| entier as i {Tint (int_of_string i)}
| _ {raise (Lexing_error "Caractère non reconnu")}

and comment = parse
| eof {raise (Lexing_error "Commentaire non terminé")}
| "\n" {Lexing.new_line lexbuf; comment lexbuf}
| "*/" {token lexbuf}
| _ {comment lexbuf}	

and line_comment = parse
| eof {EOF}
| "\n" {Lexing.new_line lexbuf; token lexbuf}
| _ {line_comment lexbuf}