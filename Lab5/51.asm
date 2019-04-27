org 0x100

%macro suma 0
	pop ax
	pop bx
	add ax, bx
	push ax
%endmacro

%macro roznica 0
	pop ax
	pop bx
	sub ax, bx
	push ax
%endmacro

%macro iloczyn 0
	pop al
	pop bx
	mul bx
	push ax
%endmacro

%macro iloraz 0
	pop ax
	pop bx
	div bx
	push ax
%endmacro


mov 	ax,	0x4C00
int 	0x21
