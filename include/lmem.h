#ifndef LMEM_H
#define LMEM_H
#include "lsys.h"

#define PROT_NONE 0x0
#define PROT_READ 0x1
#define PROT_WRITE 0x2
#define PROT_EXEC 0x4

#define MAP_SHARED 0x01
#define MAP_PRIVATE 0x02
#define MAP_SHARED_VALIDATE 0x03

#define MAP_FIXED 0x10
#define MAP_FIXED_NOREPLACE 0x100000
#define MAP_ANONYMOUS 0x20
#define MAP_GROWSDOWN 0x100
#define MAP_DENYWRITE 0x0800
#define MAP_EXECUTABLE 0x1000
#define MAP_LOCKED 0x2000
#define MAP_NORESERVER 0x4000
#define MAP_POPULATE 0x8000
#define MAP_NONBLOCK 0x10000
#define MAP_STACK 0x20000
#define MAP_HUGETLB 0x40000
#define MAP_SYNC 0x80000
#define MAP_UNITIALIZED 0x4000000

typedef long off_t;

void* _mmap(void* addr, size_t len, int prot, int flags, int fd, off_t offset); 
int _munmap(void* addr, size_t len);
int _mprotect(void* addr, size_t len, int prot);

void* alloc(size_t size) {
    void* mem =  _mmap(NULL, size + sizeof(size_t), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (mem == (void*)-1) _exit(1);
    *((size_t*)mem) = size;
    return mem + sizeof(size_t);
}

void memcpy(void* dest, void* src) {
    size_t size = *((size_t*)(src - sizeof(size_t)));
    for (size_t i = 0; i < size; ++i) ((unsigned char*)dest)[i] = ((unsigned char*)src)[i];
}

void memncpy(void* dest, void* src, size_t n) {
    for (size_t i = 0; i < n; ++i) ((unsigned char*)dest)[i] = ((unsigned char*)src)[i];
}

void free(void* mem) {
    size_t size = *(size_t*)(mem-sizeof(size_t)) + sizeof(size_t);
    _munmap(mem - sizeof(size_t), size);
}

void* ralloc(void* org, size_t new_size) {
    unsigned char* new_ret = (unsigned char*)alloc(new_size);
    memcpy(new_ret, org);
    free(org);
    return (void*)new_ret;
}

#endif
