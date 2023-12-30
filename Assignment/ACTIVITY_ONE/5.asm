org 100h
mov ax,3
int 10h
 
mov al,' '
mov bl,15
mov ah,09h
mov cx,8
int 10h

mov dx,offset n
mov ah,09h
int 21h  

mov al,' '
mov bl,2
mov ah,09h
mov cx,3
int 10h

mov dx,offset m
mov ah,09h
int 21h

ret                    
m db "Ali$"
n db "Mukerem $"