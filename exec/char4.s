	.text
f:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $0
	pushq $65
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $24, %rsp
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $1
	pushq $65
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $24, %rsp
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $2
	pushq $65
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $24, %rsp
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $3
	pushq $65
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
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
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
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
