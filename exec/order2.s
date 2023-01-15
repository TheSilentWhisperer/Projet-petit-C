	.text
f:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq 40(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $99
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setne %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else0
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 40(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $32, %rsp
	pushq %rax
	popq %rax
	jmp .endif1
.else0:
.endif1:
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq $99
	pushq $98
	pushq $97
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $32, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
