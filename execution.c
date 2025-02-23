#include "include/lmem.h"

void _mvrbp(void* code); // defined in src/test.S

// global cuz stack is fucked with char arrays for some reason
unsigned char test[16] = {0x48, 0xC7, 0xC0, 0x3C, 0x00, 0x00, 0x00, // mov $60, %rax (60 -> sys_exit)
    0x48, 0xC7, 0xC7, 0x45, 0x00, 0x00, 0x00,  // mov $69, %rdi (return code)
    0x0F, 0x05};  // syscall

int main() {
    // create executable memory
    unsigned char* code = _mmap(NULL, 16, PROT_EXEC | PROT_WRITE | PROT_READ, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    for (int i = 0; i < 16; ++i) {
        code[i] = test[i]; // move code into memory
    }

    _mvrbp(code); // this will jump to the code in memory
    return 0; // this will never happen, as the "code" just exits with code 69
}