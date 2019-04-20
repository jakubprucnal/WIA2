org 0x100
	mov	ah,	9
	mov 	dx,	hello_world
	int	0x21

	mov 	ax,	0x4C00
	int 	0x21

hello_world	db	"Hello world! $"