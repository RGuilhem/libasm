global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp
	sub rsp, 4
	push rdi 		;save value
	mov rdi, [rbp+16] 
	mov rax, 0
loop:
	add rax, 1	
	cmp BYTE [rdi], 0
	add rdi, 1
	jne loop

	pop rdi			;recover value
	mov rsp, rbp
	pop rbp
	ret
