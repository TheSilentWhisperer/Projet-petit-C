	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	pushq $11
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
	pushq $104
	movq %rbp, %rax
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
	pushq $101
	movq %rbp, %rax
	pushq -8(%rbp)
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
	pushq $108
	movq %rbp, %rax
	pushq -8(%rbp)
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
	pushq $108
	movq %rbp, %rax
	pushq -8(%rbp)
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
	pushq $111
	movq %rbp, %rax
	pushq -8(%rbp)
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
	pushq $32
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $5
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
	pushq $119
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $6
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
	pushq $111
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $7
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
	pushq $114
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $8
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
	pushq $108
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $9
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
	pushq $100
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $10
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
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
.loop0:
	movq %rbp, %rax
	pushq -16(%rbp)
	movq %rax, %rbp
	pushq $11
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
	pushq -16(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	imulq $8, %rbx
	addq %rbx, %rax
	pushq %rax
	popq %rax
	pushq 0(%rax)
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue1:
	movq %rbp, %rax
	pushq -16(%rbp)
	addq $1, -16(%rbp)
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
