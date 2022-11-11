{
    open Lexing
    open Parser
    exception Lexing_error of string
}

rule token = parse
| eof {EOF}