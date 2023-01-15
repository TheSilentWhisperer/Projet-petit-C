	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	jmp .endfct0
fib:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct4
mksum:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $2
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call fib
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call fib
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct4:
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	pushq $1
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setle %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .else5
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -8(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	jmp .endif6
.else5:
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call mksum
	addq $8, %rsp
	pushq %rax
	popq %rax
.endif6:
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct0:
	pushq $10
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call fib
	addq $16, %rsp
	pushq %rax
	popq %rax
.loop1:
	movq %rbp, %rax
	pushq -8(%rbp)
	subq $1, -8(%rbp)
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
	jz .continue3
	pushq $46
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue2:
	jmp .loop1
.continue3:
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
