open Format
open Lexing

(*options de compilation*)
let parse_only = ref false

let options = [
  "--parse_only", Arg.Set parse_only, "S'arrêter après l'analyse syntaxique";
]

(*Localise une erreur en indiquant précisément sa position de début et de fin*)
let localise pos_start pos_end filename = 
  let l = pos_start.pos_lnum in
  let c_start = pos_start.pos_cnum - pos_start.pos_bol in
  let c_end = pos_end.pos_cnum - pos_start.pos_bol in
  eprintf "File \"%s\", line %d, characters %d-%d:\n" filename l c_start c_end

let compile filename =
  (*Renvoyer une erreur si aucun fichier n'a été spécifié*)
  if filename = "" then
    begin
      eprintf "Aucun fichier spécifié";
      exit 1
    end;

  (*Renvoyer une erreur s'il y a un espace dans le nom du fichier*)
  if String.contains filename ' ' then
    begin
      eprintf "Le nom du fichier ne doit pas contenir d'espace";
      exit 1
    end;

  (*Renvoyer une erreur si le fichier n'existe pas*)
  if not (Sys.file_exists filename) then
    begin
      eprintf "Le fichier %s n'existe pas" filename;
      exit 1
    end;

  (*Renvoyer une erreur si l'extension du fichier n'est pas '.c'*)
  if not (Filename.check_suffix filename ".c") then
    begin
      eprintf "Le fichier %s n'a pas l'extension '.c'" filename;
      exit 1
    end;

  (*Effectuer l'analyse syntaxique du fichier*)
  let f = open_in filename in
  let lexbuf = Lexing.from_channel f in 
    try 
      let ast = Parser.program Lexer.token lexbuf in
      close_in f;
      (*Si l'option --parse_only est activée, s'arrêter après l'analyse syntaxique*)
      if !parse_only then exit 0
    with 
      | Lexer.Lexing_error msg -> 
          localise lexbuf.lex_start_p lexbuf.lex_curr_p filename;
          eprintf "Erreur lors de l'analyse syntaxique : %s" msg;
          exit 1
      | Parser.Error ->
          localise lexbuf.lex_start_p lexbuf.lex_curr_p filename;
          eprintf "Erreur syntaxique";
          exit 1

let main () =
  Arg.parse options compile "Usage: ./main.native [options] filename"

let () = main ()