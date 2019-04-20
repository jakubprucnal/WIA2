org 0x100
	
	mov dx, msg1
	call wypisz
	
	call nowaLinia
	
	mov ah, 0Ah
	mov dx, imie
	int 21h
	
	call nowaLinia

	mov	dx,	msg2
	call wypisz

	mov cx, 100
	petla:
		call nowaLinia

		mov	dx,	imie+2
		call wypisz

	loop petla

	mov 	ax,	0x4C00
	int 	0x21


imie 	db	20		; Bufor dla tablicy
	db	0
	times 20 db "$"
endLine db 13, 10, '$'
msg1 	db	"Podaj swoje imie, a program wywola je 100 razy.$"
msg2 	db	"Wypisuje:$"

nowaLinia:
	mov 	ah,	9
	mov	dx,	endLine
	int	0x21
ret

wypisz:
	mov	ah,	9
	int 33
ret