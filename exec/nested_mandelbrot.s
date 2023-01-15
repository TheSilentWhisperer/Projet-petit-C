	.text
add:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
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
sub:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
mul:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
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
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $8192
	pushq $2
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	pushq $8192
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
divide:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $8192
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
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $2
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rax
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
of_int:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $8192
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
inside:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct8
iter:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
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
	jz .else11
	pushq $1
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif12
.else11:
.endif12:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call mul
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq 40(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 40(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call mul
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call add
	addq $24, %rsp
	pushq %rax
	pushq $4
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setg %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else9
	pushq $0
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif10
.else9:
.endif10:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 40(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call mul
	addq $24, %rsp
	pushq %rax
	pushq $2
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call mul
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call add
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call sub
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call add
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call iter
	addq $32, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct8:
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	pushq $0
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call iter
	addq $32, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	movq %rbp, %rsp
	popq %rbp
	ret
run:
	pushq %rbp
	movq %rsp, %rbp
	subq $80, %rsp
	pushq $2
	popq %rax
	negq %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	pushq $1
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
	pushq $2
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call sub
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call divide
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	negq %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -32(%rbp)
	movq %rbx, %rbp
	pushq $1
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -40(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq -32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -40(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call sub
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call divide
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -48(%rbp)
	movq %rbx, %rbp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -56(%rbp)
	movq %rbx, %rbp
.loop0:
	movq %rbp, %rax
	pushq -56(%rbp)
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
	jz .break2
	movq %rbp, %rax
	pushq -48(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -56(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call mul
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq -32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call add
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -64(%rbp)
	movq %rbx, %rbp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -72(%rbp)
	movq %rbx, %rbp
.loop3:
	movq %rbp, %rax
	pushq -72(%rbp)
	movq %rax, %rbp
	pushq $2
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq %rbx, %rax
	pushq %rax
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
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -72(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call of_int
	addq $16, %rsp
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call mul
	addq $24, %rsp
	pushq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call add
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -80(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq -64(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -80(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call inside
	addq $24, %rsp
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else6
	pushq $48
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif7
.else6:
	pushq $49
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.endif7:
.continue4:
	movq %rbp, %rax
	pushq -72(%rbp)
	addq $1, -72(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop3
.break5:
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue1:
	movq %rbp, %rax
	pushq -56(%rbp)
	addq $1, -56(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop0
.break2:
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq $30
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call run
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
