	.file	"switch-case.cpp"
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
	cmpl	$8, -8(%rbp)
	ja	.L2
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L4(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L2-.L4
	.long	.L11-.L4
	.long	.L10-.L4
	.long	.L9-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
.L11:
	movl	$1, -4(%rbp)
	jmp	.L2
.L10:
	movl	$2, -4(%rbp)
	jmp	.L2
.L9:
	movl	$3, -4(%rbp)
	jmp	.L2
.L8:
	movl	$4, -4(%rbp)
	jmp	.L2
.L7:
	movl	$5, -4(%rbp)
	jmp	.L2
.L6:
	movl	$6, -4(%rbp)
	jmp	.L2
.L5:
	movl	$7, -4(%rbp)
	jmp	.L2
.L3:
	movl	$8, -4(%rbp)
	nop
.L2:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
