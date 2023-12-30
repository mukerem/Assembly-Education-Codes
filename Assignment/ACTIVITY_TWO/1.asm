org 100h
mov ax,3
int 10h

mov dl,35
mov dh,12
mov ah,2
int 10h

 
mov dx,offset n
mov ah,09h
int 21h

ret                    

n db "Mukerem $"