org 100h
mov ax,3
int 10h


mov dl , 30
mov dh , 10
mov ah , 02
int 10h 

mov al ,' '
mov bl , 14  
mov cx ,12
mov ah , 09h
int 10h  

mov dx,offset m
mov ah,9
int 21h

ret

m db "life is good$"