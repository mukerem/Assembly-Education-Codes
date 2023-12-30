org 100h
mov ax,3
int 10h
 

mov dl,79 

mov dh,0
iter:
  
mov ah,2
int 10h

 mov al , 'X' 
mov ah,0eh
int 10h

mov al,0 
mov ah,0eh
int 10h






dec dl

cmp dl,40
ja iter

ret
