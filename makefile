SYNTAX_TESTS = ./tests/syntax/
TYPING_TESTS = ./tests/typing/
EXEC_TESTS = ./tests/exec/
FILENAME_TESTS = ./tests/filename/

all: build	

build: 
	ocamlbuild petitc.native -quiet
	mv petitc.native petitc

clean:
	ocamlbuild -clean
	rm -f petitc
