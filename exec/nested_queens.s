	.text
solve:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	pushq 40(%rbp)
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
	popq %rax
	testq %rax, %rax
	jz .else27
	pushq $1
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif28
.else27:
.endif28:
	jmp .endfct13
check:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	jmp .endfct19
abs:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else25
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	negq %rax
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif26
.else25:
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endif26:
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct19:
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop20:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 40(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break22
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 40(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 40(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call abs
	addq $16, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 40(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call abs
	addq $16, %rsp
	pushq %rax
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
	jz .else23
	pushq $0
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif24
.else23:
.endif24:
.continue21:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop20
.break22:
	pushq $1
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct13:
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop14:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break16
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 40(%rbp)
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
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call check
	addq $8, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq 40(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call solve
	addq $32, %rsp
	pushq %rax
	popq %rbx
	popq %rax
	cmpq $0, %rax
	setne %al
	cmpq $0, %rbx
	setne %bl
	andb %bl, %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else17
	pushq $1
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif18
.else17:
.endif18:
.continue15:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop14
.break16:
	pushq $0
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
print:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop5:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break7
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
.loop8:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break10
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else11
	pushq $81
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif12
.else11:
	pushq $46
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.endif12:
	pushq $124
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue9:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop8
.break10:
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue6:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop5
.break7:
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
queens:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
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
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call solve
	addq $32, %rsp
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else3
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call print
	addq $24, %rsp
	pushq %rax
	popq %rax
	jmp .endif4
.else3:
.endif4:
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $1
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
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call queens
	addq $16, %rsp
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
