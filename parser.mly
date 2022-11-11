%{
    open Ast
%}

/*déclaration des lexèmes*/
%token EOF

/*point d'entrée de la grammaire*/
%start program

/* Type des valeurs renvoyées par l'analyseur syntaxique */
%type <Ast.program> program
%%

/*règles de la grammaire*/
program:
    EOF {{includes = []; decl_fcts = []}}
;