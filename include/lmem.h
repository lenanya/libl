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

#define PAGESIZE 4096

typedef long off_t;

void* _mmap(void* addr, size_t len, int prot, int flags, int fd, off_t offset); 
int _munmap(void* addr, size_t len);
int _mprotect(void* addr, size_t len, int prot);

#define PAGESIZE 4096

void* alloc(size_t size) {
    size_t memsize = ((size + sizeof(ssize_t)) / PAGESIZE + 1) * PAGESIZE; // one more page than size / 4096
    void* mem =  _mmap(NULL, memsize, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (mem == (void*)-1) return NULL;
    *((ssize_t*)mem) = memsize;
    return mem + sizeof(ssize_t);
}

/* start of actual memory management instead of allocating a full page lmao
void* alloc(size_t size) {
    if (!_PAGE_COUNT) {
        _HEAP_BASE = _mmap(NULL, PAGESIZE, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
        if (_HEAP_BASE == (void*)-1) return NULL;
        *(ssize_t*)_HEAP_BASE = size;
        _PAGE_COUNT += 1;
        void* mem = _HEAP_BASE + sizeof(ssize_t);
        return mem;
    } else {
        ssize_t position = 0;
        while (position < 4096) {
            ssize_t space = *(ssize_t*)_HEAP_BASE + position;
            if (space > 0) position += space;
            else {
                if (space * -1 > size) {
                    *(ssize_t*)(_HEAP_BASE + position) = size;
                    return (void*)(_HEAP_BASE + position)+sizeof(ssize_t);
                }
                if (position + size + sizeof(ssize_t) > 4096) {
                    // allocate a new page idfk yet how to keep track
                } else if (space == 0) {
                    
                }
            } 
        }
    }
}
*/

void memcpy(void* dest, void* src) {
    ssize_t size = *((ssize_t*)(src - sizeof(ssize_t)));
    for (size_t i = 0; i < size; ++i) ((unsigned char*)dest)[i] = ((unsigned char*)src)[i];
}

void memncpy(void* dest, void* src, size_t n) {
    for (size_t i = 0; i < n; ++i) ((unsigned char*)dest)[i] = ((unsigned char*)src)[i];
}

void free(void* mem) {
    ssize_t size = *(ssize_t*)(mem-sizeof(ssize_t)) + sizeof(ssize_t);
    _munmap(mem - sizeof(ssize_t), size);
}

void* ralloc(void* org, size_t new_size) {
    unsigned char* new_ret = (unsigned char*)alloc(new_size);
    memcpy(new_ret, org);
    free(org);
    return (void*)new_ret;
}

#endif
