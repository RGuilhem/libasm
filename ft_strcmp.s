global ft_strcmp

ft_strcmp:
	mov	rcx, 0	
loop_strcmp:
	mov	cl, BYTE [rdi]
	mov	dl, BYTE [rsi]
	cmp	dl, 0
	je	done
	cmp	cl, 0
	je	done
	cmp	dl, cl
	jne	done
	inc	rdi
	inc	rsi
	jmp	loop_strcmp
done:
	movzx	rax, cl
	movzx	rcx, dl
	sub	rax, rcx
	ret
