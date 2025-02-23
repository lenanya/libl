all: file memory

lib/: 
	mkdir lib

lib/lsys.o: src/lsys.S lib/
	as -g src/lsys.S -o lib/lsys.o

memory: memory.o lib/lsys.o
	ld -g memory.o lib/lsys.o -o memory
	rm memory.o

memory.o: memory.c include/lmem.h include/lsys.h include/lstring.h
	cc -ggdb -c -nostdlib memory.c -o memory.o -Wno-builtin-declaration-mismatch

file: file.o lib/lsys.o
	ld -g file.o lib/lsys.o -o file
	rm file.o

file.o: file.c include/lsys.h include/lstring.h
	cc -c -nostdlib file.c -o file.o -Wno-builtin-declaration-mismatch
