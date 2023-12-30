org 100h
mov ax,3
int 10h

mov dl,40
mov dh,0

iter:  

mov ah,2
int 10h

mov al,'X'
mov ah,0eh
int 10h 


 mov ah,2
int 10h

mov al,0
mov ah,0eh
int 10h       

inc dh

cmp dh,24
jb iter 

iter2:

mov ah,2
int 10h

mov al,'X'
mov ah,0eh
int 10h 


 mov ah,2
int 10h

mov al,0
mov ah,0eh
int 10h       

dec dh

cmp dh,12
ja iter2 


ret



