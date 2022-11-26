{
    open Ast
    open Parser
    exception Lexing_error of string
}

let chiffre = ['0'-'9']
let alpha = ['a'-'z'] | ['A'-'Z']
let ident = (alpha | "_") (alpha | chiffre | "_")*
let caractere = [' '-'&' '('-'[' ']'-'~']
let entier = '0' | ['1'-'9'] chiffre*
let espace = " " | "\t" 
let include = "#include" espace* "<" [' '-'&' '('- '=' '?'-'[' ']'-'~']* ">" "\n" 


rule token = parse
| eof {EOF}
| "'" {entier_caractere lexbuf}
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
| ident as i {Tident i}
| entier as i {Tint (int_of_string i)}
| _ {raise (Lexing_error "Lexème inconnu")}

and comment = parse
| eof {raise (Lexing_error "Commentaire non terminé")}
| "\n" {Lexing.new_line lexbuf; comment lexbuf}
| "*/" {token lexbuf}
| _ {comment lexbuf}	

and line_comment = parse
| eof {EOF}
| "\n" {Lexing.new_line lexbuf; token lexbuf}
| _ {line_comment lexbuf}

and entier_caractere = parse
| eof {raise (Lexing_error "Caractère non terminé")}
| "\n" {raise (Lexing_error "Caractère non terminé")}
| caractere as c "'" {Tint (int_of_char c)}
| "\\" "t'" {Tint (int_of_char '\t')}
| "\\" "n'" {Tint (int_of_char '\n')}
| "\\" "\'\'" {Tint (int_of_char '\'')}
| "\\" "\\'" {Tint (int_of_char '\\')}
| _ {raise (Lexing_error "Caractère non terminé ou caractère non reconnu")}