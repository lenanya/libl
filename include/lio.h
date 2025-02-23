#ifndef LIO_H
#define LIO_H
#include "lstring.h"
#include "lsys.h"

void puts(char* str) {
    writeln(STDOUT, str, lstrlen(str));
}

void putc(char c) {
    char* str = (char*)alloc(2);
    str[0] = c;
    puts(str);
    free(str);
}

void read(char* buf, size_t n) {
    _read(STDIN, buf, n);
}

void fread(int fd, char* buf, size_t n) {
    _read(fd, buf, n);
}

#endif