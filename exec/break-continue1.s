	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq $65
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop12:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $91
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break14
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
	movq %rax, %rbp
	pushq $2
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rdx
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else15
	jmp .continue13
	jmp .endif16
.else15:
.endif16:
.continue13:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop12
.break14:
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $65
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
.loop7:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $91
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break9
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $2
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rdx
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else10
	jmp .continue8
	jmp .endif11
.else10:
.endif11:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue8:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop7
.break9:
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $65
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
.loop0:
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	pushq $91
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break2
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	pushq $2
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rdx
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else5
	jmp .continue1
	jmp .endif6
.else5:
.endif6:
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	pushq $75
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setg %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else3
	jmp .break2
	jmp .endif4
.else3:
.endif4:
.continue1:
	movq %rbp, %rax
	pushq -24(%rbp)
	addq $1, -24(%rbp)
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
