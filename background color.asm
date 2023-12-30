org 100h
mov al,03h
mov ah,0
int 10h       

mov al, 1
	mov bh, 0
	mov bl, 0011_1011b
	mov cx, msg1end - offset msg1 ; calculate message size. 
	mov dl, 10
	mov dh, 7
	push cs
	pop es
	mov bp, offset msg1
	mov ah, 13h
	int 10h
	jmp msg1end
	msg1 db " hello, world! "
	msg1end:     
	ret     
	
	