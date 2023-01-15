	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $65
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
	subq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	subq $1, -8(%rbp)
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
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
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
