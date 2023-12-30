org 100h
mov ax,3
int 10h

mov al,55
mov ah,0eh
int 10h    

add al,2

int 10h
 
cmp al,59
je label
jmp jump
label:  


 mov al,55
mov ah,0eh
int 10h  

jump:

mov al,56
mov ah,0eh
int 10h  