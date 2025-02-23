#ifndef LSYS_H
#define LSYS_H

typedef long long ssize_t;
typedef unsigned long long size_t;
typedef int pid_t;
typedef unsigned int mode_t;

#define NULL ((void*) 0)

#define O_RDONLY    0x0000
#define O_WRONLY    0x0001
#define O_RDWR      0x0002
#define O_CREAT     0x0040
#define O_EXCL      0x0080
#define O_TRUNC     0x0200
#define O_APPEND    0x0400
#define O_NONBLOCK  0x0800
#define O_DSYNC     0x1000
#define O_SYNC      0x101000
#define O_RSYNC     0x101000
#define O_NOFOLLOW  0x20000
#define O_CLOEXEC   0x80000

#define STDIN  0
#define STDOUT 1
#define STDERR 2

ssize_t _read(int fd, void* buf, size_t count);
ssize_t _write(int fd, const void* buf, size_t count);
#define writeln(fd, str, length) {_write(fd, str, length);_write(fd, "\n", 1);}
int _open(const char* filename, int flags, mode_t mode);
int _close(int fd);
void _exit(int status);
pid_t _fork();
int _execve(const char* pathname, char* const argv[], char* const envp[]);
int _chdir(const char* path);
char* _getcwd(char* buf, size_t size);
int _chmod(const char* filename, mode_t mode);

#endif
