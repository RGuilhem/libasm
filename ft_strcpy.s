global ft_strcpy

ft_strcpy:
	mov rax, 0
loop1:
	mov eax, [rsi + rax]
	mov [rdi + rax], eax
	cmp BYTE [rsi + rax], 0
	je done
	inc rax
	jmp loop1
done:
	mov rax, rdi
	ret
