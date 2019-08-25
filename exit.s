; exit with status 0

    segment .text
    global _start

_start:
    mov     eax, 1       ; exit syscall
    mov     ebx, 0       ; status value
    int     0x80         ; execute syscall
