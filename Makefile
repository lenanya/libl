all: file memory numberstuff execution

CFLAGS = -ggdb -nostdlib -Wno-builtin-declaration-mismatch -c
LDFLAGS = -g
ASFLAGS = -g

lib/: 
	mkdir lib

lib/lsys.o: src/lsys.S lib/
	as $(ASFLAGS) src/lsys.S -o lib/lsys.o

memory: memory.o lib/lsys.o
	ld $(LDFLAGS) memory.o lib/lsys.o -o memory
	rm memory.o

memory.o: memory.c include/lmem.h include/lsys.h include/lstring.h
	cc $(CFLAGS) memory.c -o memory.o

file: file.o lib/lsys.o
	ld $(LDFLAGS) file.o lib/lsys.o -o file
	rm file.o

file.o: file.c include/lsys.h include/lstring.h
	cc $(CFLAGS) file.c -o file.o

numberstuff: numberstuff.o
	ld $(LDFLAGS) numberstuff.o lib/lsys.o -o numberstuff
	rm numberstuff.o	

numberstuff.o: numberstuff.c include/lsys.h include/lstring.h include/lmath.h
	cc $(CFLAGS) numberstuff.c -o numberstuff.o

lib/test.o: src/test.S
	as $(ASFLAGS) src/test.S -o lib/test.o

execution: execution.o lib/test.o lib/lsys.o
	ld $(LDFLAGS) execution.o lib/test.o lib/lsys.o -o execution 
	rm execution.o

execution.o: execution.c include/lmem.h
	cc $(CFLAGS) execution.c -o execution.o

clean:
	rm -r execution numberstuff file memory lib