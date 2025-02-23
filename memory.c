#include "include/lmem.h"
#include "include/lsys.h"
#include "include/lstring.h"

void _start() {
	char* test = alloc(69);
	test[0] = 'a';
	test[1] = 'b';
	writeln(STDOUT, test, lstrlen(test));
	char* test2 = ralloc(test, 420);
	writeln(STDOUT, test2, lstrlen(test2));
	free(test2);
	_exit(0);
}
