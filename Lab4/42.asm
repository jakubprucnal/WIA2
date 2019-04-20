org 0x100

	mov	ax,	03h
	int 10h
		mov	ax,	0b800h
		mov	es,	ax
		mov	di,	1

	mov 	cx,	30	
	petla:

		mov byte [es:di],	40h
		add	di,	2
	loop petla

	xor	ah,	ah
		int 	16h
		mov	ax,	3
		int	10h

	mov	ax,	0x4C00
	int 	0x21