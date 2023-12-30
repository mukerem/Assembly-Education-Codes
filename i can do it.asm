org 100h
mov ax,3
int 10h

mov dx,offset m
mov ah,9h
int 21h

ret
m db "I CAN DO IT$"