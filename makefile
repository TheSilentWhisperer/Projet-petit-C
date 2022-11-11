all:
	ocamlbuild petitc.native
	mv petitc.native petitc

clean:
	ocamlbuild -clean
	rm -f petitc
