	.file	"switch-case-2.cpp"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$3, -8(%rbp)
	movl	$4, -4(%rbp)
	cmpl	$8000, -8(%rbp)
	je	.L2
	cmpl	$8000, -8(%rbp)
	jg	.L3
	cmpl	$700, -8(%rbp)
	je	.L4
	cmpl	$700, -8(%rbp)
	jg	.L3
	cmpl	$600, -8(%rbp)
	je	.L5
	cmpl	$600, -8(%rbp)
	jg	.L3
	cmpl	$500, -8(%rbp)
	je	.L6
	cmpl	$500, -8(%rbp)
	jg	.L3
	cmpl	$40, -8(%rbp)
	je	.L7
	cmpl	$40, -8(%rbp)
	jg	.L3
	cmpl	$30, -8(%rbp)
	je	.L8
	cmpl	$30, -8(%rbp)
	jg	.L3
	cmpl	$1, -8(%rbp)
	je	.L9
	cmpl	$2, -8(%rbp)
	je	.L10
	jmp	.L3
.L9:
	movl	$1, -4(%rbp)
	jmp	.L3
.L10:
	movl	$2, -4(%rbp)
	jmp	.L3
.L8:
	movl	$3, -4(%rbp)
	jmp	.L3
.L7:
	movl	$4, -4(%rbp)
	jmp	.L3
.L6:
	movl	$5, -4(%rbp)
	jmp	.L3
.L5:
	movl	$6, -4(%rbp)
	jmp	.L3
.L4:
	movl	$7, -4(%rbp)
	jmp	.L3
.L2:
	movl	$8, -4(%rbp)
	nop
.L3:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
