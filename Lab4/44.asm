org 0x100

	mov	ax,	00h
	mov al, 13h
	int 10h
		
mov ax, 0A000h
mov es, ax
mov di, 159
mov al, 15

mov cx, 200
pionowa:

	mov [es:di], al
	add di, 320

loop pionowa

mov di, 32000
mov cx, 320
pozioma:
	mov [es:di], al
	inc di
loop pozioma

xor ah, ah
int 16h

mov ax, 3
int 10h
	
mov	ax,	0x4C00
int 	0x21