org 0x100


poczatek:
	mov	ah,	9
	mov	dx,	nacisnij
	int	0x21

	mov	ah,	1
	int	0x21

	mov	byte[znak],	al
	
	CMP al, 13
	JE koniec

		mov	ah,	9
		mov	dx,	zrobiles
		int	0x21

		mov	ah,	2
		mov	dl,	[znak]
		int	0x21

		mov	ah,	9
		mov	dx,	nstWiersz
		int	0x21

		JMP poczatek
	koniec:
	
		mov	ah,	9
		mov	dx,	zakoncz
		int	0x21

	mov 	ax,	0x4C00
	int 	0x21

nacisnij db	"Nacisnij klawisz!", 10, 13, "$"
zrobiles db	10, 13, "Nacisnales klawisz: $"
nstWiersz db 	10, 13, "$"
zakoncz db "Koniec programu!$"
znak db		0
