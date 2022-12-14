all: build	

build: 
	ocamlbuild petitc.native -quiet
	mv petitc.native petitc

clean:
	ocamlbuild -clean
	rm -f petitc
