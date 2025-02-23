#include "include/lstring.h"
#include "include/lsys.h"

int main() {
	char* str = "69";
	_exit(atoi(str)); // should die with error code 69
	return 0;
}
