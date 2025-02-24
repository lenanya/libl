#include "include/lmem.h"

void _mvrbp(void* code); // defined in src/test.S

int main() {
    unsigned char original_code[16] = {0x48, 0xC7, 0xC0, 0x3C, 0x00, 0x00, 0x00, // mov $60, %rax (60 -> sys_exit)
        0x48, 0xC7, 0xC7, 0x45, 0x00, 0x00, 0x00,  // mov $69, %rdi (return code)
        0x0F, 0x05};  // syscall

    // create memory
    unsigned char* code = _mmap(NULL, PAGESIZE, PROT_WRITE | PROT_READ, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (code == (void*)-1) _exit(1);
    for (int i = 0; i < 16; ++i) {
        code[i] = original_code[i]; // move code into memory
    }

    // make memory executable
    if (_mprotect(code, 16, PROT_EXEC | PROT_READ) != 0) _exit(1);

    _mvrbp(code); // this will jump to the code in memory
    return 0; // this will never happen, as the "code" just exits with code 69
}