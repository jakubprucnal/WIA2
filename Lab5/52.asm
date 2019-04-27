%include "makra.asm"

org 0x100

; push word [a]
; push word [b]
mov ax, 5
push ax
mov ax, 4
push ax
mov ax, 22
push ax
mov ax, 2
push ax
xor ax, ax
suma
roznica
iloraz

pop ax

mov 	ax,	0x4C00
int 	0x21

; a dw 6
; b dw 2
; c dw 1