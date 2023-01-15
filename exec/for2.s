	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $10
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop0:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setg %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break2
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
	movq %rbp, %rax
	pushq -8(%rbp)
	subq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop0
.break2:
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
