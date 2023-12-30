org 100h
mov ax,3
int 10h
 
mov dl,30
mov dh,10
mov ah,2
int 10h

mov al,'A'
mov bl,14 
mov ah,9
mov cx,5
int 10h

mov dl,30
mov dh,10
mov ah,2
int 10h

mov dx,offset m
mov ah,9
int 21h

mov al,'9'
mov bl,14 
mov ah,9
mov cx,1
int 10h

ret 
m db "LUCKY $"