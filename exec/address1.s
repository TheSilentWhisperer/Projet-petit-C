	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rbp, %rax
	leaq -8(%rbp), %rbx
	pushq %rbx
	movq %rax, %rbp
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -16(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	pushq $65
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rax
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
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
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rax
	pushq 0(%rax)
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $66
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
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rax
	pushq 0(%rax)
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $67
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rax
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
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
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rax
	pushq 0(%rax)
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
