	.file	"basic_class.cpp"
	.text
	.section	.text._ZN7MyClassC2Eii,"axG",@progbits,_ZN7MyClassC5Eii,comdat
	.align 2
	.weak	_ZN7MyClassC2Eii
	.type	_ZN7MyClassC2Eii, @function
_ZN7MyClassC2Eii:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN7MyClassC2Eii, .-_ZN7MyClassC2Eii
	.weak	_ZN7MyClassC1Eii
	.set	_ZN7MyClassC1Eii,_ZN7MyClassC2Eii
	.section	.text._ZN7MyClass6updateEi,"axG",@progbits,_ZN7MyClass6updateEi,comdat
	.align 2
	.weak	_ZN7MyClass6updateEi
	.type	_ZN7MyClass6updateEi, @function
_ZN7MyClass6updateEi:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN7MyClass6updateEi, .-_ZN7MyClass6updateEi
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-20(%rbp), %rax
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN7MyClassC1Eii
	leaq	-20(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZN7MyClass6updateEi
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
