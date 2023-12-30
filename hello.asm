org 100h
mov ax,3
int 10h

mov dx,offset m
mov ah,09h
int 21h
ret

m db "hello world$"    

2nn