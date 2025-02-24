all: file memory numberstuff execution

CFLAGS = -ggdb -nolibc -nostdlib -fno-stack-protector -Wno-builtin-declaration-mismatch -c
LDFLAGS = -g
ASFLAGS = -g

lib/: 
	mkdir lib

build/:
	mkdir build

lib/lsys.o: src/lsys.S lib/
	as $(ASFLAGS) src/lsys.S -o lib/lsys.o

memory: build/memory.o lib/lsys.o build/
	ld $(LDFLAGS) build/memory.o lib/lsys.o -o memory

build/memory.o: memory.c include/lmem.h include/lsys.h include/lstring.h
	cc $(CFLAGS) memory.c -o build/memory.o

file: build/file.o lib/lsys.o
	ld $(LDFLAGS) build/file.o lib/lsys.o -o file

build/file.o: file.c include/lsys.h include/lstring.h build/
	cc $(CFLAGS) file.c -o build/file.o

numberstuff: build/numberstuff.o
	ld $(LDFLAGS) build/numberstuff.o lib/lsys.o -o numberstuff

build/numberstuff.o: numberstuff.c include/lsys.h include/lstring.h include/lmath.h build/
	cc $(CFLAGS) numberstuff.c -o build/numberstuff.o

lib/test.o: src/test.S
	as $(ASFLAGS) src/test.S -o lib/test.o

execution: build/execution.o lib/test.o lib/lsys.o
	ld $(LDFLAGS) build/execution.o lib/test.o lib/lsys.o -o execution 

build/execution.o: execution.c include/lmem.h build/
	cc $(CFLAGS) execution.c -o build/execution.o

clean:
	rm -r execution numberstuff file memory lib build output

smol:
	strip execution
	strip file 
	strip numberstuff 
	strip memory