all:
	dasm *.dasm -f3 -v0 -oAliens2600.bin

run:
	stella Aliens2600.bin