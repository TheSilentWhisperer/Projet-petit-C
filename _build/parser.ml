
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

  | MenhirState009 : (('s, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident, _menhir_box_fichier) _menhir_state
    (** State 009.
        Stack shape : nt_type Tident.
        Start symbol: fichier. *)

  | MenhirState012 : (('s, _menhir_box_fichier) _menhir_cell1_param, _menhir_box_fichier) _menhir_state
    (** State 012.
        Stack shape : param.
        Start symbol: fichier. *)

  | MenhirState018 : ((('s, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_param__, _menhir_box_fichier) _menhir_state
    (** State 018.
        Stack shape : nt_type Tident loption(separated_nonempty_list(COMMA,param)).
        Start symbol: fichier. *)

  | MenhirState019 : (('s, _menhir_box_fichier) _menhir_cell1_LBRACE, _menhir_box_fichier) _menhir_state
    (** State 019.
        Stack shape : LBRACE.
        Start symbol: fichier. *)

  | MenhirState021 : (('s, _menhir_box_fichier) _menhir_cell1_WHILE, _menhir_box_fichier) _menhir_state
    (** State 021.
        Stack shape : WHILE.
        Start symbol: fichier. *)

  | MenhirState024 : (('s, _menhir_box_fichier) _menhir_cell1_Tident, _menhir_box_fichier) _menhir_state
    (** State 024.
        Stack shape : Tident.
        Start symbol: fichier. *)

  | MenhirState026 : (('s, _menhir_box_fichier) _menhir_cell1_STAR, _menhir_box_fichier) _menhir_state
    (** State 026.
        Stack shape : STAR.
        Start symbol: fichier. *)

  | MenhirState028 : (('s, _menhir_box_fichier) _menhir_cell1_SIZEOF, _menhir_box_fichier) _menhir_state
    (** State 028.
        Stack shape : SIZEOF.
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

  | MenhirState043 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 043.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState045 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 045.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState048 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 048.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState050 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 050.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState052 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 052.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState054 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 054.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState056 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 056.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState058 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 058.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState060 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 060.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState062 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 062.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState064 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 064.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState066 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 066.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState068 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 068.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState070 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 070.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState072 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 072.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState086 : (('s, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 086.
        Stack shape : expr.
        Start symbol: fichier. *)

  | MenhirState089 : ((('s, _menhir_box_fichier) _menhir_cell1_WHILE, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 089.
        Stack shape : WHILE expr.
        Start symbol: fichier. *)

  | MenhirState091 : (('s, _menhir_box_fichier) _menhir_cell1_RETURN, _menhir_box_fichier) _menhir_state
    (** State 091.
        Stack shape : RETURN.
        Start symbol: fichier. *)

  | MenhirState096 : (('s, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_state
    (** State 096.
        Stack shape : IF.
        Start symbol: fichier. *)

  | MenhirState098 : ((('s, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_state
    (** State 098.
        Stack shape : IF expr.
        Start symbol: fichier. *)

  | MenhirState100 : (('s, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_state
    (** State 100.
        Stack shape : FOR.
        Start symbol: fichier. *)

  | MenhirState102 : ((('s, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_state
    (** State 102.
        Stack shape : FOR option(decl_var).
        Start symbol: fichier. *)

  | MenhirState104 : (((('s, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_cell1_option_expr_, _menhir_box_fichier) _menhir_state
    (** State 104.
        Stack shape : FOR option(decl_var) option(expr).
        Start symbol: fichier. *)

  | MenhirState106 : ((((('s, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_cell1_option_expr_, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__, _menhir_box_fichier) _menhir_state
    (** State 106.
        Stack shape : FOR option(decl_var) option(expr) loption(separated_nonempty_list(COMMA,expr)).
        Start symbol: fichier. *)

  | MenhirState117 : (('s, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident, _menhir_box_fichier) _menhir_state
    (** State 117.
        Stack shape : nt_type Tident.
        Start symbol: fichier. *)

  | MenhirState121 : (((('s, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_cell1_instruction, _menhir_box_fichier) _menhir_state
    (** State 121.
        Stack shape : IF expr instruction.
        Start symbol: fichier. *)

  | MenhirState131 : (('s, _menhir_box_fichier) _menhir_cell1_decl_instr, _menhir_box_fichier) _menhir_state
    (** State 131.
        Stack shape : decl_instr.
        Start symbol: fichier. *)

  | MenhirState137 : (('s, _menhir_box_fichier) _menhir_cell1_decl_fct, _menhir_box_fichier) _menhir_state
    (** State 137.
        Stack shape : decl_fct.
        Start symbol: fichier. *)


and ('s, 'r) _menhir_cell1_decl_fct = 
  | MenhirCell1_decl_fct of 's * ('s, 'r) _menhir_state * (Ast.decl_fct)

and ('s, 'r) _menhir_cell1_decl_instr = 
  | MenhirCell1_decl_instr of 's * ('s, 'r) _menhir_state * (Ast.decl_instr)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_instruction = 
  | MenhirCell1_instruction of 's * ('s, 'r) _menhir_state * (Ast.instruction)

and ('s, 'r) _menhir_cell1_list_Tinclude_ = 
  | MenhirCell1_list_Tinclude_ of 's * ('s, 'r) _menhir_state * (unit list)

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_expr__ of 's * ('s, 'r) _menhir_state * (Ast.expr list)

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_param__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_param__ of 's * ('s, 'r) _menhir_state * ((Ast._type * Ast.ident) list)

and ('s, 'r) _menhir_cell1_nt_type = 
  | MenhirCell1_nt_type of 's * ('s, 'r) _menhir_state * (Ast._type)

and ('s, 'r) _menhir_cell1_option_decl_var_ = 
  | MenhirCell1_option_decl_var_ of 's * ('s, 'r) _menhir_state * (Ast.decl_var option)

and ('s, 'r) _menhir_cell1_option_expr_ = 
  | MenhirCell1_option_expr_ of 's * ('s, 'r) _menhir_state * (Ast.expr option)

and ('s, 'r) _menhir_cell1_param = 
  | MenhirCell1_param of 's * ('s, 'r) _menhir_state * (Ast._type * Ast.ident)

and ('s, 'r) _menhir_cell1_AMPERSAND = 
  | MenhirCell1_AMPERSAND of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUSMINUS = 
  | MenhirCell1_MINUSMINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUS = 
  | MenhirCell1_PLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUSPLUS = 
  | MenhirCell1_PLUSPLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SIZEOF = 
  | MenhirCell1_SIZEOF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STAR = 
  | MenhirCell1_STAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Tident = 
  | MenhirCell1_Tident of 's * ('s, 'r) _menhir_state * (
# 12 "parser.mly"
       (Ast.ident)
# 386 "parser.ml"
)

and 's _menhir_cell0_Tident = 
  | MenhirCell0_Tident of 's * (
# 12 "parser.mly"
       (Ast.ident)
# 393 "parser.ml"
)

and ('s, 'r) _menhir_cell1_Tinclude = 
  | MenhirCell1_Tinclude of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_fichier = 
  | MenhirBox_fichier of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun d ->
    (
# 106 "parser.mly"
                                       ( d )
# 410 "parser.ml"
     : (Ast.bloc))

let _menhir_action_02 =
  fun b i t xs ->
    let p = 
# 229 "<standard.mly>"
    ( xs )
# 418 "parser.ml"
     in
    (
# 43 "parser.mly"
                                                                                 ( {_type = t; ident = i; params = p; bloc = b} )
# 423 "parser.ml"
     : (Ast.decl_fct))

let _menhir_action_03 =
  fun d ->
    (
# 58 "parser.mly"
               ( Decl_fct d )
# 431 "parser.ml"
     : (Ast.decl_instr))

let _menhir_action_04 =
  fun d ->
    (
# 59 "parser.mly"
                          ( Decl_var d )
# 439 "parser.ml"
     : (Ast.decl_instr))

let _menhir_action_05 =
  fun i ->
    (
# 60 "parser.mly"
                  ( Instruction i )
# 447 "parser.ml"
     : (Ast.decl_instr))

let _menhir_action_06 =
  fun e i t ->
    (
# 64 "parser.mly"
                                        ( (t,i,Some(e)) )
# 455 "parser.ml"
     : (Ast.decl_var))

let _menhir_action_07 =
  fun i t ->
    (
# 65 "parser.mly"
                          ( (t,i,None) )
# 463 "parser.ml"
     : (Ast.decl_var))

let _menhir_action_08 =
  fun i ->
    (
# 69 "parser.mly"
           ( Econst (Cint i) )
# 471 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun () ->
    (
# 70 "parser.mly"
       ( Econst (Cbool true) )
# 479 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun () ->
    (
# 71 "parser.mly"
        ( Econst (Cbool false) )
# 487 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun () ->
    (
# 72 "parser.mly"
       ( Econst NULL )
# 495 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun i ->
    (
# 73 "parser.mly"
             ( Evar i )
# 503 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun e ->
    (
# 74 "parser.mly"
                 ( Eunop (Indirection,e) )
# 511 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun e1 e2 ->
    (
# 75 "parser.mly"
                                           ( Eunop (Indirection,Ebinop(Plus,e1,e2)) )
# 519 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun f xs ->
    let e = 
# 229 "<standard.mly>"
    ( xs )
# 527 "parser.ml"
     in
    (
# 76 "parser.mly"
                                                          ( Ecall (f,e) )
# 532 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun e ->
    (
# 77 "parser.mly"
                      ( Eunop (PreIncr,e) )
# 540 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun e ->
    (
# 78 "parser.mly"
                        ( Eunop (PreDecr,e) )
# 548 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun e ->
    (
# 79 "parser.mly"
                     ( Eunop (PostIncr,e) )
# 556 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun e ->
    (
# 80 "parser.mly"
                       ( Eunop (PostDecr,e) )
# 564 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun e ->
    (
# 81 "parser.mly"
                      ( Eunop (Address,e) )
# 572 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun e ->
    (
# 82 "parser.mly"
                ( Eunop (Not,e) )
# 580 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun e ->
    (
# 83 "parser.mly"
                  ( Eunop (UMinus,e) )
# 588 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun e ->
    (
# 84 "parser.mly"
                 ( Eunop (UPlus,e) )
# 596 "parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun e1 e2 ->
    let binop = 
# 89 "parser.mly"
           ( Plus )
# 604 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 609 "parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun e1 e2 ->
    let binop = 
# 90 "parser.mly"
            ( Minus )
# 617 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 622 "parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun e1 e2 ->
    let binop = 
# 91 "parser.mly"
           ( Mul )
# 630 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 635 "parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun e1 e2 ->
    let binop = 
# 92 "parser.mly"
          ( Div )
# 643 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 648 "parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun e1 e2 ->
    let binop = 
# 93 "parser.mly"
          ( Mod )
# 656 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 661 "parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun e1 e2 ->
    let binop = 
# 94 "parser.mly"
          ( And )
# 669 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 674 "parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun e1 e2 ->
    let binop = 
# 95 "parser.mly"
         ( Or )
# 682 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 687 "parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun e1 e2 ->
    let binop = 
# 96 "parser.mly"
         ( Assignement )
# 695 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 700 "parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun e1 e2 ->
    let binop = 
# 97 "parser.mly"
          ( Neq )
# 708 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 713 "parser.ml"
     : (Ast.expr))

let _menhir_action_33 =
  fun e1 e2 ->
    let binop = 
# 98 "parser.mly"
         ( Lt )
# 721 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 726 "parser.ml"
     : (Ast.expr))

let _menhir_action_34 =
  fun e1 e2 ->
    let binop = 
# 99 "parser.mly"
          ( Leq )
# 734 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 739 "parser.ml"
     : (Ast.expr))

let _menhir_action_35 =
  fun e1 e2 ->
    let binop = 
# 100 "parser.mly"
         ( Gt )
# 747 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 752 "parser.ml"
     : (Ast.expr))

let _menhir_action_36 =
  fun e1 e2 ->
    let binop = 
# 101 "parser.mly"
          ( Geq )
# 760 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 765 "parser.ml"
     : (Ast.expr))

let _menhir_action_37 =
  fun e1 e2 ->
    let binop = 
# 102 "parser.mly"
           ( Eq )
# 773 "parser.ml"
     in
    (
# 85 "parser.mly"
                                          ( Ebinop (binop,e1,e2) )
# 778 "parser.ml"
     : (Ast.expr))

let _menhir_action_38 =
  fun t ->
    (
# 86 "parser.mly"
                                  ( Sizeof t )
# 786 "parser.ml"
     : (Ast.expr))

let _menhir_action_39 =
  fun e ->
    (
# 87 "parser.mly"
                        ( e )
# 794 "parser.ml"
     : (Ast.expr))

let _menhir_action_40 =
  fun f i ->
    (
# 38 "parser.mly"
                                                ( f )
# 802 "parser.ml"
     : (Ast.program))

let _menhir_action_41 =
  fun () ->
    (
# 110 "parser.mly"
            ( Iskip )
# 810 "parser.ml"
     : (Ast.instruction))

let _menhir_action_42 =
  fun e ->
    (
# 111 "parser.mly"
                      ( Iexpr e )
# 818 "parser.ml"
     : (Ast.instruction))

let _menhir_action_43 =
  fun e i ->
    (
# 112 "parser.mly"
                                            ( Iif (e,i) )
# 826 "parser.ml"
     : (Ast.instruction))

let _menhir_action_44 =
  fun e i1 i2 ->
    (
# 113 "parser.mly"
                                                                     ( Iif_else (e,i1,i2) )
# 834 "parser.ml"
     : (Ast.instruction))

let _menhir_action_45 =
  fun e i ->
    (
# 114 "parser.mly"
                                               ( Iwhile (e,i) )
# 842 "parser.ml"
     : (Ast.instruction))

let _menhir_action_46 =
  fun e1 e2 i xs ->
    let e3 = 
# 229 "<standard.mly>"
    ( xs )
# 850 "parser.ml"
     in
    (
# 115 "parser.mly"
                                                                                                                                    ( Ifor (e1,e2,e3,i) )
# 855 "parser.ml"
     : (Ast.instruction))

let _menhir_action_47 =
  fun b ->
    (
# 116 "parser.mly"
           ( Ibloc b )
# 863 "parser.ml"
     : (Ast.instruction))

let _menhir_action_48 =
  fun e ->
    (
# 117 "parser.mly"
                                      ( Ireturn e )
# 871 "parser.ml"
     : (Ast.instruction))

let _menhir_action_49 =
  fun () ->
    (
# 118 "parser.mly"
                   ( Ibreak )
# 879 "parser.ml"
     : (Ast.instruction))

let _menhir_action_50 =
  fun () ->
    (
# 119 "parser.mly"
                      ( Icontinue )
# 887 "parser.ml"
     : (Ast.instruction))

let _menhir_action_51 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 895 "parser.ml"
     : (unit list))

let _menhir_action_52 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 903 "parser.ml"
     : (unit list))

let _menhir_action_53 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 911 "parser.ml"
     : (Ast.program))

let _menhir_action_54 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 919 "parser.ml"
     : (Ast.program))

let _menhir_action_55 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 927 "parser.ml"
     : (Ast.bloc))

let _menhir_action_56 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 935 "parser.ml"
     : (Ast.bloc))

let _menhir_action_57 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 943 "parser.ml"
     : (Ast.expr list))

let _menhir_action_58 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 951 "parser.ml"
     : (Ast.expr list))

let _menhir_action_59 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 959 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_action_60 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 967 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_action_61 =
  fun () ->
    (
# 47 "parser.mly"
      ( Int )
# 975 "parser.ml"
     : (Ast._type))

let _menhir_action_62 =
  fun () ->
    (
# 48 "parser.mly"
       ( Bool )
# 983 "parser.ml"
     : (Ast._type))

let _menhir_action_63 =
  fun () ->
    (
# 49 "parser.mly"
       ( Void )
# 991 "parser.ml"
     : (Ast._type))

let _menhir_action_64 =
  fun t ->
    (
# 50 "parser.mly"
                    ( Pointer t )
# 999 "parser.ml"
     : (Ast._type))

let _menhir_action_65 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1007 "parser.ml"
     : (Ast.decl_var option))

let _menhir_action_66 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1015 "parser.ml"
     : (Ast.decl_var option))

let _menhir_action_67 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 1023 "parser.ml"
     : (Ast.expr option))

let _menhir_action_68 =
  fun x ->
    (
# 113 "<standard.mly>"
    ( Some x )
# 1031 "parser.ml"
     : (Ast.expr option))

let _menhir_action_69 =
  fun i t ->
    (
# 54 "parser.mly"
                          ( (t,i) )
# 1039 "parser.ml"
     : (Ast._type * Ast.ident))

let _menhir_action_70 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1047 "parser.ml"
     : (Ast.expr list))

let _menhir_action_71 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1055 "parser.ml"
     : (Ast.expr list))

let _menhir_action_72 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1063 "parser.ml"
     : ((Ast._type * Ast.ident) list))

let _menhir_action_73 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1071 "parser.ml"
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
  
  let rec _menhir_run_135 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_list_Tinclude_ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _v ->
      let MenhirCell1_list_Tinclude_ (_menhir_stack, _, i) = _menhir_stack in
      let f = _v in
      let _v = _menhir_action_40 f i in
      MenhirBox_fichier _v
  
  let rec _menhir_run_138 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_fct -> _ -> _menhir_box_fichier =
    fun _menhir_stack _v ->
      let MenhirCell1_decl_fct (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_54 x xs in
      _menhir_goto_list_decl_fct_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_decl_fct_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState137 ->
          _menhir_run_138 _menhir_stack _v
      | MenhirState003 ->
          _menhir_run_135 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0) in
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
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_63 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_61 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009 _tok
      | BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_62 () in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009 _tok
      | RPAR ->
          let _v = _menhir_action_59 () in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (i, t) = (_v_0, _v) in
          let _v = _menhir_action_69 i t in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | VOID ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_63 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | INT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_61 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | BOOL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_62 () in
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState012 _tok
              | _ ->
                  _eRR ())
          | RPAR ->
              let x = _v in
              let _v = _menhir_action_72 x in
              _menhir_goto_separated_nonempty_list_COMMA_param_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
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
      let _v = _menhir_action_73 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_param_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_010_spec_009 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState009
  
  and _menhir_run_017 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_param__ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_63 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_128_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RETURN ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
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
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_61 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | IF ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | FOR ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | CONTINUE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BREAK ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_62 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | RBRACE ->
          let _v = _menhir_action_55 () in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_08 i in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
          | Tident _v ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState021 _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState021
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | Tint _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_0 in
              let _v = _menhir_action_08 i in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | Tident _v_2 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState089
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | RETURN ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | LBRACE ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | IF ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | FOR ->
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState089 _tok
          | CONTINUE ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | BREAK ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | _ ->
              _eRR ())
      | PLUSPLUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState045 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_26 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let _v = _menhir_action_18 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState021 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let MenhirCell0_Tident (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_nt_type (_menhir_stack, _menhir_s, t) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_06 e i t in
          _menhir_goto_decl_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState048 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_24 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState050 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_28 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let _v = _menhir_action_19 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_043 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState043 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_14 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_30 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState056 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_32 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState058 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_25 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState052 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState052
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_27 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _menhir_stack = MenhirCell1_Tident (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_0 in
              let _v = _menhir_action_08 i in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
          | Tident _v_2 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState024
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024 _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState024
          | RPAR ->
              let _v = _menhir_action_57 () in
              _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LBRACKET | LEQ | LT | MINUS | MINUSMINUS | MOD | NEQ | OR | PLUS | PLUSPLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let i = _v in
          let _v = _menhir_action_12 i in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_0 in
              let _v = _menhir_action_08 i in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | Tident _v_2 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState086
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let x = _v in
          let _v = _menhir_action_70 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState060 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_33 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState026 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_STAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_STAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_13 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SIZEOF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_63 () in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
          | INT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_61 () in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
          | BOOL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_62 () in
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState028 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_SIZEOF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_SIZEOF (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_38 t in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_nt_type (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let _v = _menhir_action_64 t in
      _menhir_goto_nt_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nt_type : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState131 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState100 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState009 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState012 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_124 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAR ->
              let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0) in
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer
          | EQ ->
              let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0) in
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer
          | SEMICOLON ->
              let (i, t) = (_v_0, _v) in
              let _v = _menhir_action_07 i t in
              _menhir_goto_decl_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_117 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState117 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUSPLUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState031 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_PLUSPLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_PLUSPLUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_16 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState032 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState032
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_PLUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_23 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState034 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_21 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUSMINUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState035 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_MINUSMINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_MINUSMINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_17 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState036 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState036
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_22 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState037 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_39 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState062 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_34 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AMPERSAND (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState039 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_AMPERSAND as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | DIV | EQ | EQEQ | GEQ | GT | LEQ | LT | MINUS | MOD | NEQ | OR | PLUS | RBRACKET | RPAR | SEMICOLON | STAR ->
          let MenhirCell1_AMPERSAND (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_20 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_35 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState066 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_36 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState068 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | EQEQ | NEQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_37 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState072 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_31 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState070 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | COMMA | EQ | OR | RBRACKET | RPAR | SEMICOLON ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_29 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_decl_var : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState131 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState019 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState100 ->
          _menhir_run_119_spec_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_129 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let d = _v in
      let _v = _menhir_action_04 d in
      _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_131 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl_instr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_63 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | Tint _v_1 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_1 in
          let _v = _menhir_action_08 i in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | Tident _v_3 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState131
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_128_spec_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RETURN ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_61 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | IF ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | FOR ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | CONTINUE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BREAK ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_62 () in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | RBRACE ->
          let _v = _menhir_action_55 () in
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let e = _v in
          let _v = _menhir_action_42 e in
          _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_instruction : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState131 ->
          _menhir_run_128_spec_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_128_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState089 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState098 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_128_spec_131 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_05 i in
      _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
  
  and _menhir_run_128_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let i = _v in
      let _v = _menhir_action_05 i in
      _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
  
  and _menhir_run_123 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let i = _v in
      let _v = _menhir_action_45 e i in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_122 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_instruction (_menhir_stack, _, i1) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let i2 = _v in
      let _v = _menhir_action_44 e i1 i2 in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_120 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_instruction (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | Tint _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_0 in
              let _v = _menhir_action_08 i in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | Tident _v_2 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState121
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | RETURN ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | LBRACE ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | IF ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | FOR ->
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState121 _tok
          | CONTINUE ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | BREAK ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | _ ->
              _eRR ())
      | AMPERSAND | BOOL | BREAK | CONTINUE | FALSE | FOR | IF | INT | LBRACE | LPAR | MINUS | MINUSMINUS | NOT | NULL | PLUS | PLUSPLUS | RBRACE | RETURN | SEMICOLON | SIZEOF | STAR | TRUE | Tident _ | Tint _ | VOID | WHILE ->
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let i = _v in
          let _v = _menhir_action_43 e i in
          _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_08 i in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
      | Tident _v ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState091 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | SEMICOLON ->
          let _v = _menhir_action_67 () in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUSPLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMICOLON ->
          let x = _v in
          let _v = _menhir_action_68 x in
          _menhir_goto_option_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState091 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_103 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_option_expr_ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_08 i in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
      | Tident _v_2 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState104
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | RPAR ->
          let _v = _menhir_action_57 () in
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104
      | _ ->
          _eRR ()
  
  and _menhir_run_105 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_cell1_option_expr_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_expr__ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Tint _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_08 i in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | Tident _v_2 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState106
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_41 () in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | RETURN ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | LBRACE ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | IF ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | FOR ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState106 _tok
      | CONTINUE ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | BREAK ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_cell1_option_expr_, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_loption_separated_nonempty_list_COMMA_expr__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell1_option_expr_ (_menhir_stack, _, e2) = _menhir_stack in
      let MenhirCell1_option_decl_var_ (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let i = _v in
      let _v = _menhir_action_46 e1 e2 i xs in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_095 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Tint _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_08 i in
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
          | Tident _v ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState096 _tok
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | Tint _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_0 in
              let _v = _menhir_action_08 i in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | Tident _v_2 ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState098
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_09 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | STAR ->
              _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | SIZEOF ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | SEMICOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_41 () in
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | RETURN ->
              _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | PLUSPLUS ->
              _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | PLUS ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | NULL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_11 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | NOT ->
              _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | MINUSMINUS ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | MINUS ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | LPAR ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | LBRACE ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | IF ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | FOR ->
              _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_10 () in
              _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
          | CONTINUE ->
              _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | BREAK ->
              _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | AMPERSAND ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | _ ->
              _eRR ())
      | PLUSPLUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MOD ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUSMINUS ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIV ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VOID ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_63 () in
              _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState100 _tok
          | INT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_61 () in
              _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState100 _tok
          | BOOL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_62 () in
              _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState100 _tok
          | SEMICOLON ->
              let _v = _menhir_action_65 () in
              _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState100
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Tident _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell0_Tident (_menhir_stack, _v_0) in
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer
          | SEMICOLON ->
              let (i, t) = (_v_0, _v) in
              let _v = _menhir_action_07 i t in
              _menhir_goto_decl_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | STAR ->
          let _menhir_stack = MenhirCell1_nt_type (_menhir_stack, _menhir_s, _v) in
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_option_decl_var_ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tint _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_08 i in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | Tident _v_2 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState102
      | TRUE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | STAR ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | SIZEOF ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | PLUSPLUS ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | PLUS ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | NULL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_11 () in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | NOT ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | MINUSMINUS ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | MINUS ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | LPAR ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | FALSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_10 () in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102 _tok
      | AMPERSAND ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | SEMICOLON ->
          let _v = _menhir_action_67 () in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState102
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_50 () in
          _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_49 () in
          _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_RETURN -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_48 e in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_132 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_decl_instr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_56 x xs in
      _menhir_goto_list_decl_instr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_decl_instr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState131 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState019 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_126 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let d = _v in
      let _v = _menhir_action_01 d in
      _menhir_goto_bloc _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_bloc : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState018 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_114_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState131 ->
          _menhir_run_114_spec_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState089 ->
          _menhir_run_114_spec_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState098 ->
          _menhir_run_114_spec_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState121 ->
          _menhir_run_114_spec_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_114_spec_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_134 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_nt_type _menhir_cell0_Tident, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_param__ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_loption_separated_nonempty_list_COMMA_param__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_Tident (_menhir_stack, i) = _menhir_stack in
      let MenhirCell1_nt_type (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_02 b i t xs in
      _menhir_goto_decl_fct _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_decl_fct : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState137 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_133_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState131 ->
          _menhir_run_133_spec_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_137 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl_fct (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_63 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_61 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
      | BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_62 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState137 _tok
      | EOF ->
          let _v = _menhir_action_53 () in
          _menhir_run_138 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_133_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let d = _v in
      let _v = _menhir_action_03 d in
      _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState019 _tok
  
  and _menhir_run_133_spec_131 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let d = _v in
      let _v = _menhir_action_03 d in
      _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState131 _tok
  
  and _menhir_run_114_spec_019 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_47 b in
      _menhir_run_128_spec_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_114_spec_131 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_decl_instr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_47 b in
      _menhir_run_128_spec_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_114_spec_089 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_WHILE, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_47 b in
      _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_114_spec_098 : type  ttv_stack. ((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_47 b in
      _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState098 _tok
  
  and _menhir_run_114_spec_121 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_IF, _menhir_box_fichier) _menhir_cell1_expr, _menhir_box_fichier) _menhir_cell1_instruction -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_47 b in
      _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_114_spec_106 : type  ttv_stack. ((((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_cell1_option_expr_, _menhir_box_fichier) _menhir_cell1_loption_separated_nonempty_list_COMMA_expr__ -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let b = _v in
      let _v = _menhir_action_47 b in
      _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_119_spec_100 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_66 x in
      _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState100
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState104 ->
          _menhir_run_082_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState024 ->
          _menhir_run_082_spec_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_087 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_71 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_082_spec_104 : type  ttv_stack. (((ttv_stack, _menhir_box_fichier) _menhir_cell1_FOR, _menhir_box_fichier) _menhir_cell1_option_decl_var_, _menhir_box_fichier) _menhir_cell1_option_expr_ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_58 x in
      _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState104
  
  and _menhir_run_082_spec_024 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tident -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_58 x in
      _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_083 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tident -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_Tident (_menhir_stack, _menhir_s, f) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_15 f xs in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_003 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_Tinclude_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | VOID ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_63 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState003 _tok
      | INT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_61 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState003 _tok
      | BOOL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_62 () in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState003 _tok
      | EOF ->
          let _v = _menhir_action_53 () in
          _menhir_run_135 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_002 : type  ttv_stack. (ttv_stack, _menhir_box_fichier) _menhir_cell1_Tinclude -> _ -> _ -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Tinclude (_menhir_stack, _menhir_s) = _menhir_stack in
      let (xs, x) = (_v, ()) in
      let _v = _menhir_action_52 x xs in
      _menhir_goto_list_Tinclude_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_Tinclude_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_fichier) _menhir_state -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Tinclude (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tinclude ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState001
      | BOOL | EOF | INT | VOID ->
          let _v = _menhir_action_51 () in
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_fichier =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Tinclude ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BOOL | EOF | INT | VOID ->
          let _v = _menhir_action_51 () in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState000 _tok
      | _ ->
          _eRR ()
  
end

let fichier =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_fichier v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
