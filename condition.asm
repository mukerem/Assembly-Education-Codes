org 100h
mov ax,3
int 10h

mov ah ,0h
int 16h

cmp al,'c'
je yes
jmp no
      
      
yes:
mov dx,offset r
mov ah ,9
int 21h
ret 

no:
mov dx,offset s
mov ah ,9
int 21h
ret     

r db "true$" 
s db "false$"