org 0x100

	mov	ax,	00h
	mov al, 13h
	int 10h
		
mov ax, 0A000h
mov es, ax
mov al, 15

mov di, 16080
mov cx, 100
pionowa1:

	mov [es:di], al
	add di, 320

loop pionowa1

mov cx, 160
pozioma1:
	mov [es:di], al
	inc di
loop pozioma1

mov di, 16080
mov cx, 160
pozioma2:
	mov [es:di], al
	inc di
loop pozioma2

mov cx, 100
pionowa2:

	mov [es:di], al
	add di, 320

loop pionowa2



xor ah, ah
int 16h

mov ax, 3
int 10h
	
mov	ax,	0x4C00
int 	0x21