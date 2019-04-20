org 0x100
	mov	ah,	9
	mov	dx,	nacisnij
	int	0x21

	mov	ah,	1
	int	0x21

	mov	byte[znak],	al
	
	mov	ah,	9
	mov	dx,	zrobiles
	int	0x21

	mov	ah,	2
	mov	dl,	[znak]
	int	0x21

	mov 	ax,	0x4C00
	int 	0x21

nacisnij db	"Nacisnij klawisz!", 10, 13, "$"
zrobiles db	10, 13, "Nacisnales klawisz: $"
znak db		0