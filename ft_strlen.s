PUBLIC _ft_strlen

_ft_strlen:
	push ebp
	mov ebp, esp
	sub esp, 4
	push edi 		;;save value
	mov edi, [ebp+8] 
	mov eax, 0
loop:
	add eax, 1	
	cmp BYTE [edi], 0
	add edi, 1
	jne loop

	pop edi			;;recover value
	mov esp, ebp
	pop ebp
	ret
