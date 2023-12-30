org 100h
mov ax,3
int 10h

mov al,' '
mov bl,14
mov ah,09h
mov cx,7
int 10h

mov dx,offset n
int 21h

ret
n db "Mukerem$"