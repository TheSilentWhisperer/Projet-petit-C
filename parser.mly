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
| i = list(Tinclude) ; f = list(decl_fct) ; EOF { {program_desc = f; program_loc = $startpos, $endpos} }
;


decl_fct:
| t = nt_type; i = Tident; LPAR; p = separated_list(COMMA,param); RPAR; b = bloc { {_type = t; ident = i; params = p; bloc = b; fct_loc = $startpos, $endpos} }
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
| t = nt_type; i = Tident; EQ; e = expr { (t,i,Some(e),($startpos,$endpos)) }
| t = nt_type; i = Tident { (t,i,None,($startpos,$endpos)) }
;

expr:
| d = expr_desc { {expr_desc = d; expr_loc = $startpos, $endpos} }
;

expr_desc:
| i = Tint { Econst (Cint i) }
| TRUE { Econst (Cbool true) }
| FALSE { Econst (Cbool false) }
| NULL { NULL }
| i = Tident { Evar i }
| STAR; e = expr { Eunop (Indirection,e) } %prec USTAR
| e1 = expr; LBRACKET; e2 = expr; RBRACKET { Eunop (Indirection, {expr_desc = Ebinop(Plus,e1,e2); expr_loc = $startpos, $endpos}) } 
| f = Tident ; LPAR; e = separated_list(COMMA,expr); RPAR { Ecall (f,e) }
| PLUSPLUS ; e = expr { Eunop (PreIncr,e) }
| MINUSMINUS ; e = expr { Eunop (PreDecr,e) }
| e = expr; PLUSPLUS { Eunop (PostIncr,e) }
| e = expr; MINUSMINUS { Eunop (PostDecr,e) }
| AMPERSAND; e = expr { Eunop (Address,e) }
| NOT; e = expr { Eunop (Not,e) }
| MINUS; e = expr { Eunop (UMinus,e) } %prec UMINUS
| PLUS; e = expr { Eunop (UPlus,e) } %prec UPLUS
| e1 = expr; binop = operateur; e2 = expr { Ebinop (binop,e1,e2) }
| SIZEOF; LPAR; t = nt_type; RPAR { Sizeof t }
| LPAR; e = expr; RPAR; { e.expr_desc }
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
| d = instruction_desc { {instruction_desc = d; instruction_loc = $startpos, $endpos} }

instruction_desc:
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


