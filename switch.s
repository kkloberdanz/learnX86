global _start

segment .data

switch:
    dq  main.case0
    dq  main.case1
    dq  main.case2
i:  dq  1

segment .text

_start:
    call main
_exit:
    mov     eax, 1       ; exit syscall
    int     0x80         ; execute syscall

main:
    mov rax, [i]
    jmp [switch+rax*8]
.case0:
    mov rbx, 100
    jmp .end
.case1:
    mov rbx, 101
    jmp .end
.case2:
    mov rbx, 102
    jmp .end
.end:
    xor eax, eax
    ret
