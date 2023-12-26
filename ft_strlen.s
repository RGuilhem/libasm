global ft_strlen

ft_strlen:
	mov	rax, 0
not_done:
	cmp	BYTE [rdi + rax], 0
	je	done
	inc	rax
	jmp	not_done
done:
	ret
