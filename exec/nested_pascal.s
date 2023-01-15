	.text
pascal:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
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
	jmp .endfct0
print_row:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop8:
	movq %rbp, %rax
	pushq -8(%rbp)
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
	jz .break10
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
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
	pushq $0
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setne %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else11
	pushq $42
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
.continue9:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
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
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct0:
	jmp .endfct1
compute_row:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $0
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
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop5:
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
	jz .break7
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
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
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	pushq $7
	popq %rbx
	popq %rax
	cqto
	idivq %rbx
	pushq %rdx
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
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
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
.continue6:
	movq %rbp, %rax
	pushq -8(%rbp)
	subq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop5
.break7:
	pushq $1
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
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
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct1:
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
.loop2:
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
	jz .break4
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call compute_row
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call print_row
	addq $16, %rsp
	pushq %rax
	popq %rax
.continue3:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop2
.break4:
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq $42
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call pascal
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
