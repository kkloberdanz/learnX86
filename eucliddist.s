        global _start

        section   .data
x1      dq        246
y1      dq        328
x2      dq        410
y2      dq        540

        section .text
_start:
        mov     r8, [x1]    ; load variables
        mov     r9, [x2]
        mov     r10, [y1]
        mov     r11, [y2]

        sub r8, r9        ; subtract x's
        sub r10, r11      ; subtract y's

        imul    r8, r8    ; square x's
        imul    r10, r10  ; square y's

        add     r8, r10   ; add the squares

        movq   xmm0, r8    ; use sse register for sqrt
        sqrtsd xmm0, xmm0   ; do square root
        movd   rbx, xmm0



_halt:
        mov     eax, 1       ; exit syscall
        int     0x80         ; execute syscall
