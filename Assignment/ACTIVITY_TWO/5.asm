  org 100h
  mov ax,3
  int 10h
 
mov dl,27
mov dh,2
mov ah,02h
int 10h 
 

mov dx,offset wifi
mov ah,09h
int 21h

mov dl,20
mov dh,2 


next: 
mov dh , 2

roof:

inc dh
mov dl,m
mov ah,02h
int 10h
 
mov al,'*' 
mov bl,14 
mov ah,9
mov cx,1
int 10h
         
mov dl,n
mov ah,02h
int 10h
 
mov al,'*' 
mov bl,2 
mov ah,9
mov cx,1
int 10h

inc n
dec m

cmp dh,12
je next2
jmp roof

next2: 

mov dl,17
mov dh,13
mov ah,02h
int 10h

mov cx,23 
mov ah,0eh 
mov al,'*' 


label: 
int 10h
loop label


wall:


inc dh
mov dl,17
mov ah,02h
int 10h
 
mov al,'*'  
mov ah,0eh
int 10h
         
mov dl,39
mov ah,02h
int 10h
 
mov al,'*'  
mov ah,0eh
int 10h 


cmp dh,23
je next3
jmp wall    

next3:
mov dl,18
mov dh,23
mov ah,02h
int 10h

mov cx,21 
mov ah,0eh 
mov al,'*'

label2: 
int 10h
loop label2


;*********************
mov dh,16
mov dl,24
mov ah,2
int 10h

mov cx,8
mov ah,0eh
label3:
mov al,'*'
int 10h
loop label3     

mov dh,20
mov ah,2
int 10h

mov cx,8
mov ah,0eh
label4:
mov al,'*'
int 10h
loop label4

mov cx,3  
mov dh ,17

label5:

mov dl,23
mov ah,2
int 10h 

mov al,'*'
mov ah,0eh
int 10h    
           
mov dl,32
mov ah,2
int 10h 

mov al,'*'
mov ah,0eh
int 10h 

inc dh   

loop label5  


mov bx,0

mov dl,35
mov dh,9
mov ah,2
int 10h



ret
wifi db "()$"
corner db "_____________$"
corner2 db "______________$"   
window1 db "______$" 
door1 db "_____$"  
cse db "CSE CLASS$"
m db 27
n db 29  
