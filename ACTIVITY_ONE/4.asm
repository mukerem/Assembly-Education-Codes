org 100h
mov ax,3
int 10h

mov al,' '
mov bl,12
mov ah,09h
mov cx,30
int 10h

mov dx,offset n
int 21h

ret
n db "Micro processor and Interface$"