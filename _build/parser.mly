%{
    open Ast
%}

/*déclaration des terminaux*/
%token EOF
%token Tinclude

%token BOOL BREAK CONTINUE ELSE FALSE FOR IF INT NULL RETURN SIZEOF TRUE VOID WHILE 
%token LPAR RPAR LBRACE RBRACE LBRACKET RBRACKET COMMA SEMICOLON

%token <Ast.ident> Tident
%token <int> Tint 

%token EQEQ NEQ GT GEQ LT LEQ EQ PLUS MINUS STAR DIV MOD PLUSPLUS MINUSMINUS AND OR NOT AMPERSAND
%token UPLUS UMINUS USTAR

/*déclaration des priorités*/
%right EQ
%left OR
%left AND
%left EQEQ NEQ
%left GT GEQ LT LEQ
%left PLUS MINUS
%left STAR DIV MOD
%right NOT PLUSPLUS MINUSMINUS AMPERSAND UPLUS UMINUS USTAR
%nonassoc LBRACKET
%nonassoc IF
%nonassoc ELSE

/*point d'entrée de la grammaire*/
%start <Ast.program> fichier

%%

/*règles de production des non-terminaux*/
fichier:
| i = list(Tinclude) ; f = list(decl_fct) ; EOF { f }
;


decl_fct:
| t = nt_type; i = Tident; LPAR; p = separated_list(COMMA,param); RPAR; b = bloc { {_type = t; ident = i; params = p; bloc = b} }
;

nt_type:
| INT { Int }
| BOOL { Bool }
| VOID { Void }
| t = nt_type; STAR { Pointer t }
;

param:
| t = nt_type; i = Tident { (t,i) };
; 

decl_instr:
| d = decl_fct { Decl_fct d }
| d = decl_var; SEMICOLON { Decl_var d }
| i = instruction { Instruction i }
;

decl_var:
| t = nt_type; i = Tident; EQ; e = expr { (t,i,Some(e)) }
| t = nt_type; i = Tident { (t,i,None) }
;

expr:
| i = Tint { {desc = Econst (Cint i); loc = $startpos, $endpos} }
| TRUE { {desc = Econst (Cbool true); loc = $startpos, $endpos} }
| FALSE { {desc = Econst (Cbool false); loc = $startpos, $endpos} }
| NULL { {desc = NULL; loc = $startpos, $endpos} }
| i = Tident { {desc = Evar i; loc = $startpos, $endpos} }
| STAR; e = expr { {desc = Eunop (Indirection,e); loc = $startpos, $endpos} } %prec USTAR
| e1 = expr; LBRACKET; e2 = expr; RBRACKET { {desc = Eunop (Indirection, {desc = Ebinop(Plus,e1,e2); loc = $startpos, $endpos}); loc = $startpos, $endpos} }
| f = Tident ; LPAR; e = separated_list(COMMA,expr); RPAR { {desc = Ecall (f,e); loc = $startpos, $endpos} }
| PLUSPLUS ; e = expr { {desc = Eunop (PreIncr,e); loc = $startpos, $endpos} }
| MINUSMINUS ; e = expr { {desc = Eunop (PreDecr,e); loc = $startpos, $endpos} }
| e = expr; PLUSPLUS { {desc = Eunop (PostIncr,e); loc = $startpos, $endpos} }
| e = expr; MINUSMINUS { {desc = Eunop (PostDecr,e); loc = $startpos, $endpos} }
| AMPERSAND; e = expr { {desc = Eunop (Address,e); loc = $startpos, $endpos} }
| NOT; e = expr { {desc = Eunop (Not,e); loc = $startpos, $endpos} }
| MINUS; e = expr { {desc = Eunop (UMinus,e); loc = $startpos, $endpos} } %prec UMINUS
| PLUS; e = expr { {desc = Eunop (UPlus,e); loc = $startpos, $endpos} } %prec UPLUS
| e1 = expr; binop = operateur; e2 = expr { {desc = Ebinop (binop,e1,e2); loc = $startpos, $endpos} }
| SIZEOF; LPAR; t = nt_type; RPAR { {desc = Sizeof t; loc = $startpos, $endpos} }
| LPAR; e = expr; RPAR; { e }
%inline operateur:
    | PLUS { Plus }
    | MINUS { Minus }
    | STAR { Mul }
    | DIV { Div }
    | MOD { Mod }
    | AND { And }
    | OR { Or }
    | EQ { Assignement }
    | NEQ { Neq }
    | LT { Lt }
    | LEQ { Leq }
    | GT { Gt }
    | GEQ { Geq }
    | EQEQ { Eq }
;

bloc:
| LBRACE; d = list(decl_instr); RBRACE { d }
;

instruction:
| SEMICOLON { Iskip }
| e = expr; SEMICOLON { Iexpr e }
| IF; LPAR; e = expr; RPAR; i = instruction { Iif (e,i) } %prec IF
| IF; LPAR; e = expr; RPAR; i1 = instruction; ELSE; i2 = instruction { Iif_else (e,i1,i2) }
| WHILE; LPAR; e = expr; RPAR; i = instruction { Iwhile (e,i) }
| FOR; LPAR; e1 = option(decl_var); SEMICOLON; e2 = option(expr); SEMICOLON; e3 = separated_list(COMMA,expr); RPAR; i = instruction { Ifor (e1,e2,e3,i) }
| b = bloc { Ibloc b }
| RETURN; e = option(expr); SEMICOLON { Ireturn e }
| BREAK; SEMICOLON { Ibreak }
| CONTINUE; SEMICOLON { Icontinue }


