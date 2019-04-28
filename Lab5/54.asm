org 0x100

mov	ah,	9
	mov	dx,	nacisnij
	int	0x21

	mov	ah,	1
	int	0x21
	
	mov byte [znak], al
	
	CMP al, '0'
	JGE wieksza
		mov ah, 9
		mov dx, nieliczba
		int 0x21
		JMP koniec

	wieksza: 
		CMP al, '9'
		JLE cyfra
			mov ah, 9
			mov dx, nieliczba
			int 0x21
			JMP koniec
		cyfra:
			mov ah, 9
			mov dx, liczba
			int 0x21
	koniec:
	mov 	ax,	0x4C00
	int 	0x21

nacisnij db	"Nacisnij klawisz!", 10, 13, "$"
liczba db	10, 13, "To jest cyfra.$"
nieliczba db 10, 13, "To nie jest cyfra.$"
znak db	0