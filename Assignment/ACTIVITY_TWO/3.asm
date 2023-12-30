org 100h
mov ax,3
int 10h

mov dl,35
mov dh,0
mov ah,2
int 10h

mov al,' '
mov bl,14
mov ah,09h
mov cx,7
int 10h
 
mov dx,offset n
mov ah,09h
int 21h    

mov bx,0

mov dl,35
mov dh,23
mov ah,2
int 10h

mov al,' '
mov bl,2
mov ah,09h
mov cx,3
int 10h
 
mov dx,offset m
mov ah,09h
int 21h

ret                    

n db "Mukerem $" 
m db "Ali$"