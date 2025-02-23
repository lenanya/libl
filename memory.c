#include "include/lmem.h"
#include "include/lsys.h"
#include "include/lstring.h"
#include "include/lio.h"

int main() {
	char* test = alloc(69);
	test[0] = 'a';
	test[1] = 'b';
	puts(test);
	test = ralloc(test, 420);
	test[2] = 'c';
	puts(test);
	free(test);
	return 0;
}
