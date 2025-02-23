#include "include/lsys.h"
#include "include/lstring.h"

int main() {
	char* to_write = "Hello from C\n";
	int fd = _open("output", O_RDWR | O_CREAT, 0644);
	if (fd < 0) {
		_write(STDERR, "Failed to open file\n", 20);
		_exit(1);
	}

	_write(fd, to_write, lstrlen(to_write));
	_close(fd);
	return 0;
}
