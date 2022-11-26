open Format
open Lexing

(*options de compilation*)
let parse_only = ref false
let type_only = ref false

let options = [
  "--parse-only", Arg.Set parse_only, "S'arrêter après l'analyse syntaxique";
  "--type-only", Arg.Set type_only, "S'arrêter après le typage";
]

(*Localise une erreur en indiquant précisément sa position de début et de fin*)
let localise loc filename =
  let pos_start, pos_end = loc in 
  let l = pos_start.pos_lnum in
  let c_start = pos_start.pos_cnum - pos_start.pos_bol + 1 in
  let c_end = pos_end.pos_cnum - pos_start.pos_bol + 1 in
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
      eprintf "Le fichier %s n'existe pas. \n" filename;
      exit 1
    end;

  (*Renvoyer une erreur si l'extension du fichier n'est pas '.c'*)
  if not (Filename.check_suffix filename ".c") then
    begin
      eprintf "Le fichier %s n'a pas l'extension '.c'. \n" filename;
      exit 1
    end;

  (*Effectuer l'analyse syntaxique du fichier*)
  let f = open_in filename in
  let lexbuf = Lexing.from_channel f in 
    begin
      try 
        let ast = Parser.fichier Lexer.token lexbuf in
        close_in f;
        (*Si l'option --parse-only est activée, s'arrêter après l'analyse syntaxique*)
        if !parse_only then exit 0;
        begin
          try
            let typed_ast = Ast.type_program ast in
            (*Si l'option --type-only est activée, s'arrêter après le typage*)
            if !type_only then exit 0;
          with 
            | Ast.TypeError (loc,msg) -> 
                localise loc filename;
                eprintf "Erreur lors du typage : %s. \n" msg;
                exit 1
        end
      with 
        | Lexer.Lexing_error msg -> 
            localise (lexbuf.lex_start_p, lexbuf.lex_curr_p) filename;
            eprintf "Erreur lors de l'analyse syntaxique : %s. \n" msg;
            exit 1
        | Parser.Error ->
            localise (lexbuf.lex_start_p, lexbuf.lex_curr_p) filename;
            eprintf "Erreur syntaxique. \n";
            exit 1
    end
    
let main () =
  Arg.parse options compile "Usage: ./main.native [options] filename"

let () = main ()