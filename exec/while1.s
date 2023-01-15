	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $10
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
.loop0:
	movq %rbp, %rax
	pushq -8(%rbp)
	subq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	testq %rax, %rax
	jz .continue2
	pushq $65
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue1:
	jmp .loop0
.continue2:
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
