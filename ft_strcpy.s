global ft_strcpy

ft_strcpy:
	mov rax, 0
loop1:
	cmp BYTE [rsi + rax], 0
	je done
	mov dl, [rsi + rax]
	mov [rdi + rax], dl
	inc rax
	jmp loop1
done:
	mov dl, 0
	mov [rdi + rax], dl
	mov rax, rdi
	ret
