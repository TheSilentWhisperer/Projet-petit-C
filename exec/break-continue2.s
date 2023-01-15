	.text
print2:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
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
	jz .else12
	pushq $32
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif13
.else12:
	pushq $48
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $10
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
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
.endif13:
	pushq $48
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $10
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rdx
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
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
	subq $16, %rsp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop0:
	movq %rbp, %rax
	pushq -8(%rbp)
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
	jz .break2
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
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
	jmp .continue1
	jmp .endif11
.else10:
.endif11:
	pushq $124
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
.loop3:
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
	jz .break5
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else8
	jmp .continue4
	jmp .endif9
.else8:
.endif9:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call print2
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $9
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else6
	jmp .break5
	jmp .endif7
.else6:
.endif7:
	pushq $124
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue4:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop3
.break5:
	pushq $124
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
.continue1:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop0
.break2:
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
