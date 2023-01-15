	.text
quicksort:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct5
swap:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
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
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
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
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
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
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
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
.endfct5:
	jmp .endfct6
quickrec:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	pushq $1
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setle %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else16
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	ret
	jmp .endif17
.else16:
.endif17:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
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
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	popq %rax
	movq %rbp, %rbx
	movq %rax, -32(%rbp)
	movq %rbx, %rbp
.loop9:
	movq %rbp, %rax
	pushq -32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break11
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else12
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -32(%rbp)
	addq $1, -32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call swap
	addq $24, %rsp
	pushq %rax
	popq %rax
	jmp .endif13
.else12:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -32(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else14
	movq %rbp, %rax
	pushq -32(%rbp)
	addq $1, -32(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .endif15
.else14:
	movq %rbp, %rax
	subq $1, -24(%rbp)
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call swap
	addq $24, %rsp
	pushq %rax
	popq %rax
.endif15:
.endif13:
.continue10:
	jmp .loop9
.break11:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else7
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call quickrec
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call quickrec
	addq $24, %rsp
	pushq %rax
	popq %rax
	jmp .endif8
.else7:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call quickrec
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call quickrec
	addq $24, %rsp
	pushq %rax
	popq %rax
.endif8:
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct6:
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	pushq $0
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call quickrec
	addq $24, %rsp
	pushq %rax
	popq %rax
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
	jz .else3
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
	jmp .endif4
.else3:
.endif4:
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
	subq $24, %rsp
	pushq $5
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
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
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
	pushq $42
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $0
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
	pushq $21
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $1
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
	pushq $42
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $2
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
	pushq $1
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $3
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
	pushq $1
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $4
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
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call quicksort
	addq $24, %rsp
	pushq %rax
	popq %rax
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
.loop0:
	movq %rbp, %rax
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
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
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -24(%rbp)
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
.continue1:
	movq %rbp, %rax
	pushq -24(%rbp)
	addq $1, -24(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop0
.break2:
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
