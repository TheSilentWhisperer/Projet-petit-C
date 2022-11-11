
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | EOF
  
end

include MenhirBasics

# 1 "parser.mly"
  
    open Ast

# 22 "parser.ml"

type ('s, 'r) _menhir_state

and _menhir_box_program = 
  | MenhirBox_program of (Ast.program) [@@unboxed]

let _menhir_action_1 =
  fun () ->
    (
# 17 "parser.mly"
        ({includes = []; decl_fcts = []})
# 34 "parser.ml"
     : (Ast.program))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | EOF ->
        "EOF"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_0 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _ = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_1 () in
      MenhirBox_program _v
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_0 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
