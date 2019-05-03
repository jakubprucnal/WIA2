org 0x100

	mov dx, msg1
	call wypisz

	mov ah, 0Ah
	mov dx, tekst
	int 21h

	mov	dx,	msg2
	call wypisz
	xor cx, cx
	mov cl, [tekst+1]
	petla:
		mov bx, tekst+1
		add bx, cx
		mov	dx, [bx]
		mov ah, 2
		int 0x21
	LOOP petla

	mov 	ax,	0x4C00
	int 	0x21


tekst	db	120		; Bufor dla tablicy
	db	0

endLine db 10, 13, "$"

msg1 	db	"Wpisz jakis tekst: $"
msg2 	db	10, 13, "Wypisuje odwrotnie: $"

nowaLinia:
	mov 	ah,	9
	mov	dx,	endLine
	int	0x21
ret

wypisz:
	mov	ah,	9
	int 33
ret