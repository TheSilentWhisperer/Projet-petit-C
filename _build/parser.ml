
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VOID
    | USTAR
    | UPLUS
    | UMINUS
    | Tint of (
# 13 "parser.mly"
       (int)
# 20 "parser.ml"
  )
    | Tinclude
    | Tident of (
# 12 "parser.mly"
       (Ast.ident)
# 26 "parser.ml"
  )
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
  
end

include MenhirBasics

# 1 "parser.mly"
  
    open Ast

# 76 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_fichier) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: fichier. *)

  | MenhirState001 : (('s, _menhir_box_fichier) _menhir_cell1_Tinclude, _menhir_box_fichier) _menhir_state
    (** State 001.
        Stack shape : Tinclude.
        Start symbol: fichier. *)

  | MenhirState003 : (('s, _menhir_box_fichier) _menhir_cell1_list_Tinclude_, _menhir_box_fichier) _menhir_state
    (** State 003.
        Stack shape : list(Tinclude).
        Start symbol: fichier. *)

  | MenhirState009 : (('s, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_state
    (** State 009.
        Stack shape : nt_type Tident LPAR.
        Start symbol: fichier. *)

  | MenhirState012 : (('s, _menhir_box_fichier) _menhir_cell1_param, _menhir_box_fichier) _menhir_state
    (** State 012.
        Stack shape : param.
        Start symbol: fichier. *)

  | MenhirState018 : ((('s, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_param__ _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_state
    (** State 018.
        Stack shape : nt_type Tident LPAR loption(separated_nonempty_list(COMMA,param)) RPAR.
        Start symbol: fichier. *)

  | MenhirState019 : (('s, _menhir_box_fichier) _menhir_cell1_LBRACE, _menhir_box_fichier) _menhir_state
    (** State 019.
        Stack shape : LBRACE.
        Start symbol: fichier. *)

  | MenhirState021 : (('s, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_state
    (** State 021.
        Stack shape : WHILE LPAR.
        Start symbol: fichier. *)

  | MenhirState024 : (('s, _menhir_box_fichier) _menhir_cell1_Tident _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_state
    (** State 024.
        Stack shape : Tident LPAR.
        Start symbol: fichier. *)

  | MenhirState026 : (('s, _menhir_box_fichier) _menhir_cell1_STAR, _menhir_box_fichier) _menhir_state
    (** State 026.
        Stack shape : STAR.
        Start symbol: fichier. *)

  | MenhirState028 : (('s, _menhir_box_fichier) _menhir_cell1_SIZEOF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_state
    (** State 028.
        Stack shape : SIZEOF LPAR.
        Start symbol: fichier. *)

  | MenhirState031 : (('s, _menhir_box_fichier) _menhir_cell1_PLUSPLUS, _menhir_box_fichier) _menhir_state
    (** State 031.
        Stack shape : PLUSPLUS.
        Start symbol: fichier. *)

  | MenhirState032 : (('s, _menhir_box_fichier) _menhir_cell1_PLUS, _menhir_box_fichier) _menhir_state
    (** State 032.
        Stack shape : PLUS.
        Start symbol: fichier. *)

  | MenhirState034 : (('s, _menhir_box_fichier) _menhir_cell1_NOT, _menhir_box_fichier) _menhir_state
    (** State 034.
        Stack shape : NOT.
        Start symbol: fichier. *)

  | MenhirState035 : (('s, _menhir_box_fichier) _menhir_cell1_MINUSMINUS, _menhir_box_fichier) _menhir_state
    (** State 035.
        Stack shape : MINUSMINUS.
        Start symbol: fichier. *)

  | MenhirState036 : (('s, _menhir_box_fichier) _menhir_cell1_MINUS, _menhir_box_fichier) _menhir_state
    (** State 036.
        Stack shape : MINUS.
        Start symbol: fichier. *)

  | MenhirState037 : (('s, _menhir_box_fichier) _menhir_cell1_LPAR, _menhir_box_fichier) _menhir_state
    (** State 037.
        Stack shape : LPAR.
        Start symbol: fichier. *)

  | MenhirState039 : (('s, _menhir_box_fichier) _menhir_cell1_AMPERSAND, _menhir_box_fichier) _menhir_state
    (** State 039.
        Stack shape : AMPERSAND.
        Start symbol: fichier. *)

  | MenhirState044 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 044.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState046 : (('s, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_STAR, _menhir_box_fichier) _menhir_state
    (** State 046.
        Stack shape : expr STAR.
        Start symbol: fichier. *)

  | MenhirState049 : (('s, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_PLUS, _menhir_box_fichier) _menhir_state
    (** State 049.
        Stack shape : expr PLUS.
        Start symbol: fichier. *)

  | MenhirState051 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 051.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState053 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 053.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState055 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 055.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState057 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 057.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState059 : (('s, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_MINUS, _menhir_box_fichier) _menhir_state
    (** State 059.
        Stack shape : expr MINUS.
        Start symbol: fichier. *)

  | MenhirState061 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 061.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState063 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 063.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState065 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 065.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState067 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 067.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState069 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 069.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState071 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 071.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState073 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 073.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState087 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 087.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState090 : ((('s, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_state
    (** State 090.
        Stack shape : WHILE LPAR expr RPAR.
        Start symbol: fichier. *)

  | MenhirState092 : (('s, _menhir_box_fichier) _menhir_cell1_RETURN, _menhir_box_fichier) _menhir_state
    (** State 092.
        Stack shape : RETURN.
        Start symbol: fichier. *)

  | MenhirState097 : (('s, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_state
    (** State 097.
        Stack shape : IF LPAR.
        Start symbol: fichier. *)

  | MenhirState099 : ((('s, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_state
    (** State 099.
        Stack shape : IF LPAR expr RPAR.
        Start symbol: fichier. *)

  | MenhirState101 : (('s, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_state
    (** State 101.
        Stack shape : FOR LPAR.
        Start symbol: fichier. *)

  | MenhirState103 : ((('s, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_state
    (** State 103.
        Stack shape : FOR LPAR option(decl_var) SEMICOLON.
        Start symbol: fichier. *)

  | MenhirState105 : (((('s, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_state
    (** State 105.
        Stack shape : FOR LPAR option(decl_var) SEMICOLON option(expr) SEMICOLON.
        Start symbol: fichier. *)

  | MenhirState107 : ((((('s, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_state
    (** State 107.
        Stack shape : FOR LPAR option(decl_var) SEMICOLON option(expr) SEMICOLON loption(separated_nonempty_list(COMMA,expr)) RPAR.
        Start symbol: fichier. *)

  | MenhirState119 : (('s, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident, _menhir_box_fichier) _menhir_state
    (** State 119.
        Stack shape : nt_type Tident.
        Start symbol: fichier. *)

  | MenhirState123 : (((('s, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_cell1_instruction, _menhir_box_fichier) _menhir_state
    (** State 123.
        Stack shape : IF LPAR expr RPAR instruction.
        Start symbol: fichier. *)

  | MenhirState133 : (('s, _menhir_box_fichier) _menhir_cell1_decl_instr, _menhir_box_fichier) _menhir_state
    (** State 133.
        Stack shape : decl_instr.
        Start symbol: fichier. *)

  | MenhirState139 : (('s, _menhir_box_fichier) _menhir_cell1_decl_fct, _menhir_box_fichier) _menhir_state
    (** State 139.
        Stack shape : decl_fct.
        Start symbol: fichier. *)


and ('s, 'r) _menhir_cell1_decl_fct = 
  | MenhirCell1_decl_fct of 's * ('s, 'r) _menhir_state * (Ast.decl_fct)

and ('s, 'r) _menhir_cell1_decl_instr = 
  | MenhirCell1_decl_instr of 's * ('s, 'r) _menhir_state * (Ast.decl_instr)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_instruction = 
  | MenhirCell1_instruction of 's * ('s, 'r) _menhir_state * (Ast.instruction) * Lexing.position

and ('s, 'r) _menhir_cell1_list_Tinclude_ = 
  | MenhirCell1_list_Tinclude_ of 's * ('s, 'r) _menhir_state * (unit list) * Lexing.position

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_expr__ of 's * ('s, 'r) _menhir_state * (Ast.expr list)

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_param__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_param__ of 's * ('s, 'r) _menhir_state * ((Ast._type * Ast.ident) list)

and ('s, 'r) _menhir_cell1_nt_type = 
  | MenhirCell1_nt_type of 's * ('s, 'r) _menhir_state * (Ast._type) * Lexing.position

and ('s, 'r) _menhir_cell1_option_decl_var_ = 
  | MenhirCell1_option_decl_var_ of 's * ('s, 'r) _menhir_state * (Ast.decl_var option)

and ('s, 'r) _menhir_cell1_option_expr_ = 
  | MenhirCell1_option_expr_ of 's * ('s, 'r) _menhir_state * (Ast.expr option)

and ('s, 'r) _menhir_cell1_param = 
  | MenhirCell1_param of 's * ('s, 'r) _menhir_state * (Ast._type * Ast.ident)

and ('s, 'r) _menhir_cell1_AMPERSAND = 
  | MenhirCell1_AMPERSAND of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LPAR = 
  | MenhirCell0_LPAR of 's * Lexing.position

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_MINUS = 
  | MenhirCell0_MINUS of 's * Lexing.position

and ('s, 'r) _menhir_cell1_MINUSMINUS = 
  | MenhirCell1_MINUSMINUS of 's * ('s, 'r) _menhir_state * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_PLUS = 
  | MenhirCell1_PLUS of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_PLUS = 
  | MenhirCell0_PLUS of 's * Lexing.position

and ('s, 'r) _menhir_cell1_PLUSPLUS = 
  | MenhirCell1_PLUSPLUS of 's * ('s, 'r) _menhir_state * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RPAR = 
  | MenhirCell0_RPAR of 's * Lexing.position

and 's _menhir_cell0_SEMICOLON = 
  | MenhirCell0_SEMICOLON of 's * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_SIZEOF = 
  | MenhirCell1_SIZEOF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_STAR = 
  | MenhirCell1_STAR of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_STAR = 
  | MenhirCell0_STAR of 's * Lexing.position

and ('s, 'r) _menhir_cell1_Tident = 
  | MenhirCell1_Tident of 's * ('s, 'r) _menhir_state * (
# 12 "parser.mly"
       (Ast.ident)
# 404 "parser.ml"
) * Lexing.position * Lexing.position

and 's _menhir_cell0_Tident = 
  | MenhirCell0_Tident of 's * (
# 12 "parser.mly"
       (Ast.ident)
# 411 "parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_Tinclude = 
  | MenhirCell1_Tinclude of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_fichier = 
  | MenhirBox_fichier of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun d ->
    (
# 110 "parser.mly"
                                       ( d )
# 428 "parser.ml"
     : (Ast.bloc))

let _menhir_action_02 =
  fun _endpos_b_ _startpos_t_ b i t xs ->
    let p = 
# 229 "<standard.mly>"
    ( xs )
# 436 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos_t_ in
    (
# 43 "parser.mly"
                                                                                 ( {_type = t; ident = i; params = p; bloc = b; fct_loc = _startpos, _endpos} )
# 443 "parser.ml"
     : (Ast.decl_fct))

let _menhir_action_03 =
  fun d ->
    (
# 58 "parser.mly"
               ( Decl_fct d )
# 451 "parser.ml"
     : (Ast.decl_instr))

let _menhir_action_04 =
  fun d ->
    (
# 59 "parser.mly"
                          ( Decl_var d )
# 459 "parser.ml"
     : (Ast.decl_instr))

let _menhir_action_05 =
  fun i ->
    (
# 60 "parser.mly"
                  ( Instruction i )
# 467 "parser.ml"
     : (Ast.decl_instr))

let _menhir_action_06 =
  fun _endpos_e_ _startpos_t_ e i t ->
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_t_ in
    (
# 64 "parser.mly"
                                        ( (t,i,Some(e),(_startpos,_endpos)) )
# 477 "parser.ml"
     : (Ast.decl_var))

let _menhir_action_07 =
  fun _endpos_i_ _startpos_t_ i t ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_t_ in
    (
# 65 "parser.mly"
                          ( (t,i,None,(_startpos,_endpos)) )
# 487 "parser.ml"
     : (Ast.decl_var))

let _menhir_action_08 =
  fun _endpos_d_ _startpos_d_ d ->
    let _endpos = _endpos_d_ in
    let _startpos = _startpos_d_ in
    (
# 69 "parser.mly"
                ( {expr_desc = d; expr_loc = _startpos, _endpos} )
# 497 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun i ->
    (
# 73 "parser.mly"
           ( Econst (Cint i) )
# 505 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_10 =
  fun () ->
    (
# 74 "parser.mly"
       ( Econst (Cbool true) )
# 513 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_11 =
  fun () ->
    (
# 75 "parser.mly"
        ( Econst (Cbool false) )
# 521 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_12 =
  fun () ->
    (
# 76 "parser.mly"
       ( NULL )
# 529 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_13 =
  fun i ->
    (
# 77 "parser.mly"
             ( Evar i )
# 537 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_14 =
  fun e ->
    (
# 78 "parser.mly"
                 ( Eunop (Indirection,e) )
# 545 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_15 =
  fun _endpos__4_ _startpos_e1_ e1 e2 ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e1_ in
    (
# 79 "parser.mly"
                                           ( Eunop (Indirection, {expr_desc = Ebinop(Plus,e1,e2); expr_loc = _startpos, _endpos}) )
# 555 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_16 =
  fun f xs ->
    let e = 
# 229 "<standard.mly>"
    ( xs )
# 563 "parser.ml"
     in
    (
# 80 "parser.mly"
                                                          ( Ecall (f,e) )
# 568 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_17 =
  fun e ->
    (
# 81 "parser.mly"
                      ( Eunop (PreIncr,e) )
# 576 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_18 =
  fun e ->
    (
# 82 "parser.mly"
                        ( Eunop (PreDecr,e) )
# 584 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_19 =
  fun e ->
    (
# 83 "parser.mly"
                     ( Eunop (PostIncr,e) )
# 592 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_20 =
  fun e ->
    (
# 84 "parser.mly"
                       ( Eunop (PostDecr,e) )
# 600 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_21 =
  fun e ->
    (
# 85 "parser.mly"
                      ( Eunop (Address,e) )
# 608 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_22 =
  fun e ->
    (
# 86 "parser.mly"
                ( Eunop (Not,e) )
# 616 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_23 =
  fun e ->
    (
# 87 "parser.mly"
                  ( Eunop (UMinus,e) )
# 624 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_24 =
  fun e ->
    (
# 88 "parser.mly"
                 ( Eunop (UPlus,e) )
# 632 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_25 =
  fun e1 e2 ->
    let binop = 
# 93 "parser.mly"
           ( Plus )
# 640 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 645 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_26 =
  fun e1 e2 ->
    let binop = 
# 94 "parser.mly"
            ( Minus )
# 653 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 658 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_27 =
  fun e1 e2 ->
    let binop = 
# 95 "parser.mly"
           ( Mul )
# 666 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 671 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_28 =
  fun e1 e2 ->
    let binop = 
# 96 "parser.mly"
          ( Div )
# 679 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 684 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_29 =
  fun e1 e2 ->
    let binop = 
# 97 "parser.mly"
          ( Mod )
# 692 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 697 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_30 =
  fun e1 e2 ->
    let binop = 
# 98 "parser.mly"
          ( And )
# 705 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 710 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_31 =
  fun e1 e2 ->
    let binop = 
# 99 "parser.mly"
         ( Or )
# 718 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 723 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_32 =
  fun e1 e2 ->
    let binop = 
# 100 "parser.mly"
         ( Assignement )
# 731 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 736 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_33 =
  fun e1 e2 ->
    let binop = 
# 101 "parser.mly"
          ( Neq )
# 744 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 749 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_34 =
  fun e1 e2 ->
    let binop = 
# 102 "parser.mly"
         ( Lt )
# 757 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 762 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_35 =
  fun e1 e2 ->
    let binop = 
# 103 "parser.mly"
          ( Leq )
# 770 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 775 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_36 =
  fun e1 e2 ->
    let binop = 
# 104 "parser.mly"
         ( Gt )
# 783 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 788 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_37 =
  fun e1 e2 ->
    let binop = 
# 105 "parser.mly"
          ( Geq )
# 796 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 801 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_38 =
  fun e1 e2 ->
    let binop = 
# 106 "parser.mly"
           ( Eq )
# 809 "parser.ml"
     in
    (
# 89 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 814 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_39 =
  fun t ->
    (
# 90 "parser.mly"
                                  ( Sizeof t )
# 822 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_40 =
  fun e ->
    (
# 91 "parser.mly"
                        ( e.expr_desc )
# 830 "parser.ml"
     : (Ast.expr_desc))

let _menhir_action_41 =
  fun _endpos__3_ _startpos_i_ f i ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos_i_ in
    (
# 38 "parser.mly"
                                                ( {program_desc = f; program_loc = _startpos, _endpos} )
# 840 "parser.ml"
     : (Ast.program))

let _menhir_action_42 =
  fun _endpos_d_ _startpos_d_ d ->
    let _endpos = _endpos_d_ in
    let _startpos = _startpos_d_ in
    (
# 114 "parser.mly"
                       ( {instruction_desc = d; instruction_loc = _startpos, _endpos} )
# 850 "parser.ml"
     : (Ast.instruction))

let _menhir_action_43 =
  fun () ->
    (
# 117 "parser.mly"
            ( Iskip )
# 858 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_44 =
  fun e ->
    (
# 118 "parser.mly"
                      ( Iexpr e )
# 866 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_45 =
  fun e i ->
    (
# 119 "parser.mly"
                                            ( Iif (e,i) )
# 874 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_46 =
  fun e i1 i2 ->
    (
# 120 "parser.mly"
                                                                     ( Iif_else (e,i1,i2) )
# 882 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_47 =
  fun e i ->
    (
# 121 "parser.mly"
                                               ( Iwhile (e,i) )
# 890 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_48 =
  fun e1 e2 i xs ->
    let e3 = 
# 229 "<standard.mly>"
    ( xs )
# 898 "parser.ml"
     in
    (
# 122 "parser.mly"
                                                                                                                                    ( Ifor (e1,e2,e3,i) )
# 903 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_49 =
  fun b ->
    (
# 123 "parser.mly"
           ( Ibloc b )
# 911 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_50 =
  fun e ->
    (
# 124 "parser.mly"
                                      ( Ireturn e )
# 919 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_51 =
  fun () ->
    (
# 125 "parser.mly"
                   ( Ibreak )
# 927 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_52 =
  fun () ->
    (
# 126 "parser.mly"
                      ( Icontinue )
# 935 "parser.ml"
     : (Ast.instruction_desc))

let _menhir_action_53 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 943 "parser.ml"
     : (unit list))

let _menhir_action_54 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 951 "parser.ml"
     : (unit list))

let _menhir_action_55 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 959 "parser.ml"
     : (Ast.decl_fct list))

let _menhir_action_56 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 967 "parser.ml"
     : (Ast.decl_fct list))

let _menhir_action_57 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 975 "parser.ml"
     : (Ast.bloc))

let _menhir_action_58 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 983 "parser.ml"
     : (Ast.bloc))

let _menhir_action_59 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 991 "parser.ml"
     : (Ast.expr list))

let _menhir_action_60 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 999 "parser.ml"
     : (Ast.expr list))

let _menhir_action_61 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1007 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_action_62 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1015 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_action_63 =
  fun () ->
    (
# 47 "parser.mly"
      ( Int )
# 1023 "parser.ml"
     : (Ast._type))

let _menhir_action_64 =
  fun () ->
    (
# 48 "parser.mly"
       ( Bool )
# 1031 "parser.ml"
     : (Ast._type))

let _menhir_action_65 =
  fun () ->
    (
# 49 "parser.mly"
       ( Void )
# 1039 "parser.ml"
     : (Ast._type))

let _menhir_action_66 =
  fun t ->
    (
# 50 "parser.mly"
                    ( Pointer t )
# 1047 "parser.ml"
     : (Ast._type))

let _menhir_action_67 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1055 "parser.ml"
     : (Ast.decl_var option))

let _menhir_action_68 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1063 "parser.ml"
     : (Ast.decl_var option))

let _menhir_action_69 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1071 "parser.ml"
     : (Ast.expr option))

let _menhir_action_70 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1079 "parser.ml"
     : (Ast.expr option))

let _menhir_action_71 =
  fun i t ->
    (
# 54 "parser.mly"
                          ( (t,i) )
# 1087 "parser.ml"
     : (Ast._type * Ast.ident))

let _menhir_action_72 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1095 "parser.ml"
     : (Ast.expr list))

let _menhir_action_73 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1103 "parser.ml"
     : (Ast.expr list))

let _menhir_action_74 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1111 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_action_75 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1119 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AMPERSAND ->
        "AMPERSAND"
    | AND ->
        "AND"
    | BOOL ->
        "BOOL"
    | BREAK ->
        "BREAK"
    | COMMA ->
        "COMMA"
    | CONTINUE ->
        "CONTINUE"
    | DIV ->
        "DIV"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQEQ ->
        "EQEQ"
    | FALSE ->
        "FALSE"
    | FOR ->
        "FOR"
    | GEQ ->
        "GEQ"
    | GT ->
        "GT"
    | IF ->
        "IF"
    | INT ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LEQ ->
        "LEQ"
    | LPAR ->
        "LPAR"
    | LT ->
        "LT"
    | MINUS ->
        "MINUS"
    | MINUSMINUS ->
        "MINUSMINUS"
    | MOD ->
        "MOD"
    | NEQ ->
        "NEQ"
    | NOT ->
        "NOT"
    | NULL ->
        "NULL"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | PLUSPLUS ->
        "PLUSPLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RETURN ->
        "RETURN"
    | RPAR ->
        "RPAR"
    | SEMICOLON ->
        "SEMICOLON"
    | SIZEOF ->
        "SIZEOF"
    | STAR ->
        "STAR"
    | TRUE ->
        "TRUE"
    | Tident _ ->
        "Tident"
    | Tinclude ->
        "Tinclude"
    | Tint _ ->
        "Tint"
    | UMINUS ->
        "UMINUS"
    | UPLUS ->
        "UPLUS"
    | USTAR ->
        "USTAR"
    | VOID ->
        "VOID"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_137 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_list_Tinclude_ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let MenhirCell1_list_Tinclude_ (_menhir_stack, _, i, _startpos_i_) = _menhir_stack in
      let (_endpos__3_, f) = (_endpos, _v) in
      let _v = _menhir_action_41 _endpos__3_ _startpos_i_ f i in
      MenhirBox_fichier _v
  
  let rec _menhir_run_140 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_fct -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _v ->
      let MenhirCell1_decl_fct (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_56 x xs in
      _menhir_goto_list_decl_fct_ _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_goto_list_decl_fct_ : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      match _menhir_s with
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _v
      | MenhirState003 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _v = _v_0 in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAR ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | STAR ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_LPAR (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_65 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState009 _tok
      | INT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_63 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState009 _tok
      | BOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_64 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState009 _tok
      | RPAR ->
          let _v = _menhir_action_61 () in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (i, t) = (_v_0, _v) in
          let _v = _menhir_action_71 i t in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_65 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState012 _tok
              | INT ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_63 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState012 _tok
              | BOOL ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos in
                  let _v = _menhir_action_64 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState012 _tok
              | _ ->
                  _eRR ())
          | RPAR ->
              let x = _v in
              let _v = _menhir_action_74 x in
              _menhir_goto_separated_nonempty_list_COMMA_param_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_param_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState012 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState009 ->
          _menhir_run_010_spec_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_013 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_param -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_75 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_param_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_010_spec_009 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident _menhir_cell0_LPAR -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_62 x in
      _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
  
  and _menhir_run_017 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident _menhir_cell0_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_param__ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAR (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | VOID ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_65 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | Tint _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019
      | TRUE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | SEMICOLON ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_43 () in
          _menhir_run_112_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | RETURN ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | NULL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_4) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | INT ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_5 in
          let _v = _menhir_action_63 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | IF ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | FOR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | CONTINUE ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BREAK ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BOOL ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_7 in
          let _v = _menhir_action_64 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | RBRACE ->
          let _v = _menhir_action_57 () in
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAR (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021
          | TRUE ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | NULL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | FALSE ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_4) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_021 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState021 _tok
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAR (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | Tint _v_1 ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_3, _startpos_2, _v_1) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v_5 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState090
          | TRUE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_7, _startpos_6) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | SEMICOLON ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos_9) in
              let _v = _menhir_action_43 () in
              _menhir_run_112_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | RETURN ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | NULL ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_13, _startpos_12) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | LBRACE ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | IF ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | FOR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | FALSE ->
              let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_16 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_16, _startpos_15) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | CONTINUE ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | BREAK ->
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
          | _ ->
              _eRR ())
      | PLUSPLUS ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_STAR (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState046
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_046 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_STAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState046 _tok
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_STAR as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell0_STAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_27 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
      let _endpos__2_ = _endpos in
      let _v = _menhir_action_19 e in
      _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_e_ _v _menhir_s _tok
  
  and _menhir_goto_expr_desc : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_120 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell0_Tident (_menhir_stack, i, _, _) = _menhir_stack in
          let MenhirCell1_nt_type (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_06 _endpos_e_ _startpos_t_ e i t in
          _menhir_goto_decl_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_PLUS (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState049
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_049 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_PLUS -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState049 _tok
  
  and _menhir_run_050 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_PLUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell0_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_25 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState051
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_051 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState051 _tok
  
  and _menhir_run_052 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_29 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
      let _endpos__2_ = _endpos in
      let _v = _menhir_action_20 e in
      _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_e_ _v _menhir_s _tok
  
  and _menhir_run_044 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_044 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState044
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_044 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_044 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_044 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState044
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_044 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState044 _tok
  
  and _menhir_run_045 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos__4_, e2) = (_endpos_0, _v) in
          let _v = _menhir_action_15 _endpos__4_ _startpos_e1_ e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e1_ _v _menhir_s _tok
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_055 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState055 _tok
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_31 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState057
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_057 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState057 _tok
  
  and _menhir_run_058 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_33 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_MINUS (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState059
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_059 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_MINUS -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState059 _tok
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_MINUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell0_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_26 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState053
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_053 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState053 _tok
  
  and _menhir_run_054 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_28 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _menhir_stack = MenhirCell1_Tident (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAR (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v_1 ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_3, _startpos_2, _v_1) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v_5 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState024
          | TRUE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_7, _startpos_6) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | NULL ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos_9) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | FALSE ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_13, _startpos_12) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | RPAR ->
              let _v = _menhir_action_59 () in
              _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LBRACKET | LEQ | LT | MINUS | MINUSMINUS | MOD | NEQ | OR | PLUS | PLUSPLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_13 i in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tident _menhir_cell0_LPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState024 _tok
  
  and _menhir_run_086 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v_0 ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_2, _startpos_1, _v_0) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v_4 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState087
          | TRUE ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_6, _startpos_5) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | NULL ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_9, _startpos_8) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | FALSE ->
              let _startpos_11 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_12 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_12, _startpos_11) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let x = _v in
          let _v = _menhir_action_72 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_061 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState061 _tok
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_34 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_026 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_STAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState026 _tok
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_STAR as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_STAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_14 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_SIZEOF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAR (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_65 () in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState028 _tok
          | INT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_63 () in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState028 _tok
          | BOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_64 () in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState028 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_SIZEOF _menhir_cell0_LPAR as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_SIZEOF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (t, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_39 t in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_nt_type (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
      let _v = _menhir_action_66 t in
      _menhir_goto_nt_type _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
  
  and _menhir_goto_nt_type : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState133 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState009 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_126 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAR ->
              let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0, _startpos_1, _endpos) in
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
          | EQ ->
              let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0, _startpos_1, _endpos) in
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer
          | SEMICOLON ->
              let (_endpos_i_, i, _startpos_t_, t) = (_endpos, _v_0, _startpos, _v) in
              let _v = _menhir_action_07 _endpos_i_ _startpos_t_ i t in
              _menhir_goto_decl_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_119 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_119 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState119 _tok
  
  and _menhir_run_031 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_PLUSPLUS (_menhir_stack, _menhir_s, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_1, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031
      | TRUE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_3, _startpos_2) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | NULL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_5, _startpos_4) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_7, _startpos_6) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_031 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_PLUSPLUS -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState031 _tok
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_PLUSPLUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_PLUSPLUS (_menhir_stack, _menhir_s, _startpos__1_, _) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_17 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_032 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_PLUS -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState032 _tok
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_PLUS (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_24 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_034 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState034 _tok
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_22 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_MINUSMINUS (_menhir_stack, _menhir_s, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_1, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035
      | TRUE ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_3, _startpos_2) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | NULL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_5, _startpos_4) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_7, _startpos_6) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_035 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_MINUSMINUS -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState035 _tok
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_MINUSMINUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_MINUSMINUS (_menhir_stack, _menhir_s, _startpos__1_, _) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_18 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_036 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState036 _tok
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_23 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_037 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState037 _tok
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__3_, e) = (_endpos_0, _v) in
          let _v = _menhir_action_40 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState063
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_063 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState063 _tok
  
  and _menhir_run_064 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_35 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_AMPERSAND (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_039 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_AMPERSAND -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState039 _tok
  
  and _menhir_run_041 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_AMPERSAND as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_AMPERSAND (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_21 e in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState065
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_065 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState065 _tok
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_36 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState067
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_067 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState067 _tok
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_37 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState069
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_069 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_069 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState069 _tok
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_38 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_073 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_073 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_073 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_073 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_073 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState073 _tok
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_32 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState071
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_071 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState071 _tok
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_30 e1 e2 in
          _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_decl_var : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState133 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState019 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState101 ->
          _menhir_run_121_spec_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_131 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let d = _v in
      let _v = _menhir_action_04 d in
      _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_133 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl_instr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_65 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState133 _tok
      | Tint _v_1 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_1) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v_3 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState133
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | SEMICOLON ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_43 () in
          _menhir_run_112_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | RETURN ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_63 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState133 _tok
      | IF ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | FOR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | CONTINUE ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BREAK ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | BOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_64 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState133 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | RBRACE ->
          let _v = _menhir_action_57 () in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_133 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState133 _tok
  
  and _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__2_, _startpos_e_, e) = (_endpos_1, _startpos, _v) in
          let _v = _menhir_action_44 e in
          _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_e_ _v _menhir_s _tok
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_instruction_desc : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _v _menhir_s _tok
  
  and _menhir_goto_instruction : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState133 ->
          _menhir_run_130_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_130_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState090 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState123 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState099 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_130_spec_133 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_05 i in
      _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133 _tok
  
  and _menhir_run_130_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_05 i in
      _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
  
  and _menhir_run_125 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_i_, i) = (_endpos, _v) in
      let _v = _menhir_action_47 e i in
      _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_124 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_instruction (_menhir_stack, _, i1, _) = _menhir_stack in
      let MenhirCell0_RPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_i2_, i2) = (_endpos, _v) in
      let _v = _menhir_action_46 e i1 i2 in
      _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i2_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_122 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_instruction (_menhir_stack, _menhir_s, _v, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | Tint _v_0 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_1, _startpos, _v_0) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v_3 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState123
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_4 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_4, _startpos) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | SEMICOLON ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_6, _startpos) in
              let _v = _menhir_action_43 () in
              _menhir_run_112_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | RETURN ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | NULL ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_8, _startpos) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | LBRACE ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | IF ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | FOR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | CONTINUE ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | BREAK ->
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
          | _ ->
              _eRR ())
      | AMPERSAND | BOOL | BREAK | CONTINUE | FALSE | FOR | IF | INT | LBRACE | LPAR | MINUS | MINUSMINUS | NOT | NULL | PLUS | PLUSPLUS | RBRACE | RETURN | SEMICOLON | SIZEOF | STAR | TRUE | Tident _ | Tint _ | VOID | WHILE ->
          let MenhirCell0_RPAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e, _, _) = _menhir_stack in
          let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_i_, i) = (_endpos, _v) in
          let _v = _menhir_action_45 e i in
          _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_123 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState123 _tok
  
  and _menhir_run_112_spec_123 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _v _tok
  
  and _menhir_run_092 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_0, _v) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState092
      | TRUE ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | NULL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | FALSE ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_092 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | SEMICOLON ->
          let _v = _menhir_action_69 () in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_092 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState092 _tok
  
  and _menhir_run_095 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let x = _v in
          let _v = _menhir_action_70 x in
          _menhir_goto_option_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState092 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_104 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_option_expr_ (_menhir_stack, _menhir_s, _v) in
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMICOLON (_menhir_stack, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_2, _startpos_1, _v_0) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v_4 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState105
      | TRUE ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_6, _startpos_5) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | NULL ->
          let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_9, _startpos_8) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | FALSE ->
          let _startpos_11 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_12 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_12, _startpos_11) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | RPAR ->
          let _v = _menhir_action_59 () in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState105
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_105 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState105 _tok
  
  and _menhir_run_106 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_expr__ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAR (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | Tint _v_0 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_1, _startpos, _v_0) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v_3 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState107
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_4 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_4, _startpos) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | SEMICOLON ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_6, _startpos) in
          let _v = _menhir_action_43 () in
          _menhir_run_112_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | RETURN ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | NULL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_8, _startpos) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | IF ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | FOR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | CONTINUE ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | BREAK ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_107 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState107 _tok
  
  and _menhir_run_112_spec_107 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _v _tok
  
  and _menhir_run_113 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_expr__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_SEMICOLON (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_option_expr_ (_menhir_stack, _, e2) = _menhir_stack in
      let MenhirCell0_SEMICOLON (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_option_decl_var_ (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_i_, i) = (_endpos, _v) in
      let _v = _menhir_action_48 e1 e2 i xs in
      _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_096 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAR (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState097
          | TRUE ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_2) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | NULL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_3) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | FALSE ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_4) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState097
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_097 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState097 _tok
  
  and _menhir_run_098 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAR (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | Tint _v_1 ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_3, _startpos_2, _v_1) in
              let _v = _menhir_action_09 i in
              _menhir_run_040_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
          | Tident _v_5 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState099
          | TRUE ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_7, _startpos_6) in
              let _v = _menhir_action_10 () in
              _menhir_run_040_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | SEMICOLON ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos_9) in
              let _v = _menhir_action_43 () in
              _menhir_run_112_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | RETURN ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | NULL ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_13, _startpos_12) in
              let _v = _menhir_action_12 () in
              _menhir_run_040_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | LBRACE ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | IF ->
              _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | FOR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | FALSE ->
              let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_16 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_16, _startpos_15) in
              let _v = _menhir_action_11 () in
              _menhir_run_040_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
          | CONTINUE ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | BREAK ->
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
          | _ ->
              _eRR ())
      | PLUSPLUS ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_099 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState099 _tok
  
  and _menhir_run_112_spec_099 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _v MenhirState099 _tok
  
  and _menhir_run_100 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAR (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_65 () in
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState101 _tok
          | INT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_63 () in
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState101 _tok
          | BOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_64 () in
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState101 _tok
          | SEMICOLON ->
              let _v = _menhir_action_67 () in
              _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState101
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_117 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0, _startpos_1, _endpos) in
              _menhir_run_119 _menhir_stack _menhir_lexbuf _menhir_lexer
          | SEMICOLON ->
              let (_endpos_i_, i, _startpos_t_, t) = (_endpos, _v_0, _startpos, _v) in
              let _v = _menhir_action_07 _endpos_i_ _startpos_t_ i t in
              _menhir_goto_decl_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_option_decl_var_ (_menhir_stack, _menhir_s, _v) in
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMICOLON (_menhir_stack, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_2, _startpos_1, _v_0) in
          let _v = _menhir_action_09 i in
          _menhir_run_040_spec_103 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v _tok
      | Tident _v_4 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState103
      | TRUE ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_6, _startpos_5) in
          let _v = _menhir_action_10 () in
          _menhir_run_040_spec_103 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | NULL ->
          let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_9, _startpos_8) in
          let _v = _menhir_action_12 () in
          _menhir_run_040_spec_103 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | FALSE ->
          let _startpos_11 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_12 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_12, _startpos_11) in
          let _v = _menhir_action_11 () in
          _menhir_run_040_spec_103 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | SEMICOLON ->
          let _v = _menhir_action_69 () in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState103
      | _ ->
          _eRR ()
  
  and _menhir_run_040_spec_103 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState103 _tok
  
  and _menhir_run_108 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_52 () in
          _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_110 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_51 () in
          _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__3_, e) = (_endpos, _v) in
      let _v = _menhir_action_50 e in
      _menhir_goto_instruction_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_112_spec_133 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_run_130_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_134 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_decl_instr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_58 x xs in
      _menhir_goto_list_decl_instr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_decl_instr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState133 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState019 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_128 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__3_, d) = (_endpos, _v) in
      let _v = _menhir_action_01 d in
      _menhir_goto_bloc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_bloc : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState018 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState019 ->
          _menhir_run_116_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState133 ->
          _menhir_run_116_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState090 ->
          _menhir_run_116_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState099 ->
          _menhir_run_116_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState123 ->
          _menhir_run_116_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState107 ->
          _menhir_run_116_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_136 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_param__ _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_param__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_Tident (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_nt_type (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_02 _endpos_b_ _startpos_t_ b i t xs in
      _menhir_goto_decl_fct _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_decl_fct : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState139 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_135_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState133 ->
          _menhir_run_135_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_139 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl_fct (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_65 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState139 _tok
      | INT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_63 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState139 _tok
      | BOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_64 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState139 _tok
      | EOF ->
          let _v = _menhir_action_55 () in
          _menhir_run_140 _menhir_stack _menhir_lexbuf _v
      | _ ->
          _eRR ()
  
  and _menhir_run_135_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let d = _v in
      let _v = _menhir_action_03 d in
      _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
  
  and _menhir_run_135_spec_133 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let d = _v in
      let _v = _menhir_action_03 d in
      _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState133 _tok
  
  and _menhir_run_116_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_b_, _startpos_b_, b) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_49 b in
      _menhir_run_112_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _startpos_b_ _v _tok
  
  and _menhir_run_112_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_run_130_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_116_spec_133 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_b_, _startpos_b_, b) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_49 b in
      _menhir_run_112_spec_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _startpos_b_ _v _tok
  
  and _menhir_run_116_spec_090 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_b_, _startpos_b_, b) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_49 b in
      _menhir_run_112_spec_090 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _startpos_b_ _v _tok
  
  and _menhir_run_112_spec_090 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_42 _endpos_d_ _startpos_d_ d in
      _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _v _tok
  
  and _menhir_run_116_spec_099 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_b_, _startpos_b_, b) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_49 b in
      _menhir_run_112_spec_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _startpos_b_ _v _tok
  
  and _menhir_run_116_spec_123 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR, _menhir_box_fichier) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_b_, _startpos_b_, b) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_49 b in
      _menhir_run_112_spec_123 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _startpos_b_ _v _tok
  
  and _menhir_run_116_spec_107 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_b_, _startpos_b_, b) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_49 b in
      _menhir_run_112_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _startpos_b_ _v _tok
  
  and _menhir_run_121_spec_101 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_68 x in
      _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState101
  
  and _menhir_run_040_spec_087 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState087 _tok
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState105 ->
          _menhir_run_083_spec_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState024 ->
          _menhir_run_083_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_73 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_083_spec_105 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ _menhir_cell0_SEMICOLON, _menhir_box_fichier) _menhir_cell1_option_expr_ _menhir_cell0_SEMICOLON -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState105
  
  and _menhir_run_083_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tident _menhir_cell0_LPAR -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_084 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tident _menhir_cell0_LPAR -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_Tident (_menhir_stack, _menhir_s, f, _startpos_f_, _) = _menhir_stack in
      let (xs, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_16 f xs in
      _menhir_goto_expr_desc _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_f_ _v _menhir_s _tok
  
  and _menhir_run_040_spec_090 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE _menhir_cell0_LPAR, _menhir_box_fichier) _menhir_cell1_expr _menhir_cell0_RPAR -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState090 _tok
  
  and _menhir_run_040_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_d_, _startpos_d_, d) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_08 _endpos_d_ _startpos_d_ d in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_d_ _startpos_d_ _v MenhirState019 _tok
  
  let rec _menhir_run_003 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_Tinclude_ (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_65 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState003 _tok
      | INT ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_63 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState003 _tok
      | BOOL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_64 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState003 _tok
      | EOF ->
          let _v = _menhir_action_55 () in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_002 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tinclude -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Tinclude (_menhir_stack, _menhir_s, _startpos_x_) = _menhir_stack in
      let (xs, x) = (_v, ()) in
      let _v = _menhir_action_54 x xs in
      _menhir_goto_list_Tinclude_ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_x_ _v _menhir_s _tok
  
  and _menhir_goto_list_Tinclude_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_Tinclude (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tinclude ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | BOOL | EOF | INT | VOID ->
          let _v = _menhir_action_53 () in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tinclude ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BOOL | EOF | INT | VOID ->
          let _v = _menhir_action_53 () in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v MenhirState000 _tok
      | _ ->
          _eRR ()
  
end

let fichier =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_fichier v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
