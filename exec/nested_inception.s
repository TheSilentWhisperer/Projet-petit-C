	.text
	.globl	main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $120, %rsp
	pushq $89
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
	pushq $65
	popq %rax
	movq %rbp, %rbx
	movq %rax, -16(%rbp)
	movq %rbx, %rbp
	pushq $69
	popq %rax
	movq %rbp, %rbx
	movq %rax, -24(%rbp)
	movq %rbx, %rbp
	pushq $67
	popq %rax
	movq %rbp, %rbx
	movq %rax, -32(%rbp)
	movq %rbx, %rbp
	pushq $83
	popq %rax
	movq %rbp, %rbx
	movq %rax, -40(%rbp)
	movq %rbx, %rbp
	pushq $65
	popq %rax
	movq %rbp, %rbx
	movq %rax, -48(%rbp)
	movq %rbx, %rbp
	pushq $82
	popq %rax
	movq %rbp, %rbx
	movq %rax, -56(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -64(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -72(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -80(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -88(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -96(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -104(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -112(%rbp)
	movq %rbx, %rbp
	pushq $1
	popq %rax
	movq %rbp, %rbx
	movq %rax, -120(%rbp)
	movq %rbx, %rbp
	jmp .endfct0
present:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	pushq $32
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq 24(%rbp)
	movq %rax, %rbp
	popq %rax
	testq %rax, %rax
	jz .else14
	movq %rbp, %rax
	pushq 32(%rbp)
	movq %rax, %rbp
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
	jmp .endif15
.else14:
	pushq $32
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.endif15:
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct0:
	jmp .endfct1
draw:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop11:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -64(%rbp)
	movq %rax, %rbp
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break13
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -8(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -72(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -16(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -80(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -24(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -88(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -48(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -112(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -56(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -120(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -32(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -96(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -40(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq -104(%rbp)
	movq %rax, %rbp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call present
	addq $24, %rsp
	pushq %rax
	popq %rax
	pushq $10
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
.continue12:
	movq %rbp, %rax
	pushq -8(%rbp)
	addq $1, -8(%rbp)
	movq %rax, %rbp
	popq %rax
	jmp .loop11
.break13:
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct1:
	jmp .endfct2
airplane:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct3
van:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct4
hotel:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct5
fortress:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	jmp .endfct6
dream_city:
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	jmp .endfct7
limbo:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call draw
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct7:
	pushq $0
	popq %rax
	movq %rbp, %rbx
	movq %rax, -8(%rbp)
	movq %rbx, %rbp
.loop8:
	movq %rbp, %rax
	pushq -8(%rbp)
	movq %rax, %rbp
	pushq $14
	popq %rbx
	popq %rax
	cmpq %rbx, %rax
	setl %al
	movzbq %al, %rax
	pushq %rax
	popq %rax
	testq %rax, %rax
	jz .break10
	pushq $45
	popq %rdi
	andq $-16, %rsp
	call putchar
	pushq %rax
	popq %rax
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
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -112(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -120(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call limbo
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct6:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call draw
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call dream_city
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct5:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call draw
	addq $8, %rsp
	pushq %rax
	popq %rax
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -88(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call fortress
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct4:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call draw
	addq $8, %rsp
	pushq %rax
	popq %rax
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -80(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call hotel
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct3:
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	pushq %rbp
	movq %rax, %rbp
	call draw
	addq $8, %rsp
	pushq %rax
	popq %rax
	pushq $0
	movq %rbp, %rax
	movq 16(%rbp), %rbp
	popq %rbx
	movq %rbx, -72(%rbp)
	pushq %rbx
	movq %rax, %rbp
	popq %rax
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call van
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	ret
.endfct2:
	movq %rbp, %rax
	pushq %rbp
	movq %rax, %rbp
	call airplane
	addq $8, %rsp
	pushq %rax
	popq %rax
	movq %rbp, %rsp
	popq %rbp
	movq $0, %rax
	ret
	.data
