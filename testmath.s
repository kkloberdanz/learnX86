	.file	"testmath.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%f\n"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	cvtsi2sd	%edi, %xmm0
	leaq	.LC0(%rip), %rsi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	movb	$1, %al
	sqrtsd	%xmm0, %xmm0
	call	__printf_chk@PLT
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
