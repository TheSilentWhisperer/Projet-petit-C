	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
.loop2:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $10
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break4
	pushq $10
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
.loop5:
	movq %rbp, %rax
	pushq -24(%rbp)
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
	jz .break7
	movq %rbp, %rax
	addq $1, -8(%rbp)
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rax
.continue6:
	movq %rbp, %rax
	pushq -24(%rbp)
	subq $1, -24(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop5
.break7:
.continue3:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop2
.break4:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $100
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else0
	pushq $33
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif1
.else0:
.endif1:
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
