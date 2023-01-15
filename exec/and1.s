	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq $65
	pushq $1
	pushq $1
	popq %rbx
	popq %rax
	cmpq $0, %rax
	setne %al
	cmpq $0, %rbx
	setne %bl
	andb %bl, %al
	movzbq %al, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $65
	pushq $1
	pushq $2
	popq %rbx
	popq %rax
	cmpq $0, %rax
	setne %al
	cmpq $0, %rbx
	setne %bl
	andb %bl, %al
	movzbq %al, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $65
	pushq $1
	pushq $0
	popq %rbx
	popq %rax
	cmpq $0, %rax
	setne %al
	cmpq $0, %rbx
	setne %bl
	andb %bl, %al
	movzbq %al, %rax
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
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
