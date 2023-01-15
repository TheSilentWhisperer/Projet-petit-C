	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
.loop0:
	pushq $1
	popq %rax
	testq %rax, %rax
	jz .break2
	jmp .break2
	pushq $65
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue1:
	jmp .loop0
.break2:
	pushq $66
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
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
