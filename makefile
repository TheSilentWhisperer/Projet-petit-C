SYNTAX_TESTS = ./tests/syntax/
TYPING_TESTS = ./tests/typing/
EXEC_TESTS = ./tests/exec/
FILENAME_TESTS = ./tests/filename/

all: build clean	

testSyntax:
	make build
	for b in $$(ls $(SYNTAX_TESTS)); do echo "\nSyntax tests, expected behavior: $$b" && for f in $$(ls $(SYNTAX_TESTS)$$b); do echo "\t$$f" && ./petitc --parse-only $(SYNTAX_TESTS)$$b/$$f; done; done 
	for b in $$(ls $(TYPING_TESTS)); do echo "\nTyping tests, expected behavior: $$b" && for f in $$(ls $(TYPING_TESTS)$$b); do echo "\t$$f" && ./petitc --parse-only $(TYPING_TESTS)$$b/$$f; done; done 
	for b in $$(ls $(EXEC_TESTS)); do echo "\nTyping tests, expected behavior: $$b" && for f in $$(ls $(EXEC_TESTS)$$b); do echo "\t$$f" && ./petitc --parse-only $(EXEC_TESTS)$$b/$$f; done; done
	
	make clean

build: 
	ocamlbuild petitc.native -quiet
	mv petitc.native petitc

clean:
	ocamlbuild -clean
	rm -f petitc
