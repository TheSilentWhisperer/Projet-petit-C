	.text
print:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rax
	pushq 0(%rax)
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq $42
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	leaq -8(%rbp), %rbx
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call print
	addq $16, %rsp
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
