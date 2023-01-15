	.text
fact_imp:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop6:
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setg %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .continue8
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	subq $1, 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
.continue7:
	jmp .loop6
.continue8:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
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
	subq $0, %rsp
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call fact_imp
	addq $16, %rsp
	pushq %rax
	pushq $1
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else4
	pushq $49
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif5
.else4:
.endif5:
	pushq $1
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call fact_imp
	addq $16, %rsp
	pushq %rax
	pushq $1
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else2
	pushq $50
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif3
.else2:
.endif3:
	pushq $5
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call fact_imp
	addq $16, %rsp
	pushq %rax
	pushq $120
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else0
	pushq $51
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
