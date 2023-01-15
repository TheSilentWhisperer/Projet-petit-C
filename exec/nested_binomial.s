	.text
comb1:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq $0, %rax
	setne %al
	cmpq $0, %rbx
	setne %bl
	orb %bl, %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else13
	pushq $1
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif14
.else13:
.endif14:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call comb1
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call comb1
	addq $24, %rsp
	pushq %rax
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
comb2:
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	pushq $8
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call malloc
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
.loop7:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setle %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break9
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	pushq $8
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	popq %rdi
	andq $-16, %rsp
	call malloc
	pushq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
.loop10:
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setle %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break12
	pushq $0
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
.continue11:
	movq %rbp, %rax
	pushq -24(%rbp)
	addq $1, -24(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop10
.break12:
.continue8:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop7
.break9:
	jmp .endfct2
compute:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
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
	jz .else5
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif6
.else5:
.endif6:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq $0, %rax
	setne %al
	cmpq $0, %rbx
	setne %bl
	orb %bl, %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else3
	pushq $1
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	jmp .endif4
.else3:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call compute
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call compute
	addq $24, %rsp
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
.endif4:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct2:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call compute
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
print_int:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $9
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setg %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else0
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $10
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call print_int
	addq $16, %rsp
	pushq %rax
	popq %rax
	jmp .endif1
.else0:
.endif1:
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
	subq $0, %rsp
	pushq $5
	pushq $10
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call comb1
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call print_int
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	pushq $5
	pushq $10
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call comb2
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call print_int
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
