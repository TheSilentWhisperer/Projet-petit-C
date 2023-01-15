	.text
f:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct0
g:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct1
add:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	pushq 0(%rax)
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	addq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	popq %rbx
	movq %rbx, 0(%rax)
	pushq %rbx
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct1:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	leaq 24(%rbp), %rbx
	pushq %rbx
	movq %rax, %rbp
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call add
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct0:
	pushq $104
	pushq $97
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $101
	pushq $104
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $108
	pushq $101
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $108
	pushq $108
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $111
	pushq $108
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $32
	pushq $111
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $119
	pushq $32
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $111
	pushq $119
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $114
	pushq $111
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $108
	pushq $114
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $100
	pushq $108
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
	pushq %rax
	popq %rax
	pushq $10
	pushq $100
	popq %rbx
	popq %rax
	subq %rbx, %rax
	pushq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call g
	addq $16, %rsp
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
	pushq $97
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call f
	addq $16, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
