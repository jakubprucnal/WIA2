org 0x100

	mov	cx,	100

	petla:

		mov	ah,	9
		mov	dx,	imie
		int	0x21

	loop petla

	mov 	ax,	0x4C00
	int 	0x21

imie db ": Jakub", 10, 13, "$"