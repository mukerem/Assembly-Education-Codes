
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ax,3
int 10h

mov dl , 4
mov dh ,2
mov ah ,02h
int 10h

mov dx , offset m
mov ah,9
int 21h


       
m db "life is good$"



