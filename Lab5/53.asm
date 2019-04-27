%include "makra.asm"

org 0x100

push 4
push word [b]
push word [b]
iloczyn
push 3
iloczyn
push word [a]
push word [a]
push word [a]
iloczyn
iloczyn
push 2
iloczyn
roznica
push word [c]
suma
roznica


pop ax

mov 	ax,	0x4C00
int 	0x21

a dw 6
b dw 2
c dw 1