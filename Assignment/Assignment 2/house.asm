  org 100h
  mov ax,3
  int 10h
 
mov dl,18
mov dh,3
mov ah,02h
int 10h 

mov al,' '  
mov bl,14
mov cx,5
mov ah,09h
int 10h
 
mov dl,18
mov dh,3
mov ah,02h
int 10h

mov dx,offset wifi
mov ah,09h
int 21h

mov dl,20
mov dh,3 

antenna:  

inc dh

mov ah,02h
int 10h
 
mov al,'|'  
mov bl,14
mov cx,1
mov ah,09h
int 10h


cmp dh,10
je next
jmp antenna

next: 
mov dh , 2

roof:

inc dh
mov dl,m
mov ah,02h
int 10h
 
mov al,'*'  
mov ah,0eh
int 10h
         
mov dl,n
mov ah,02h
int 10h
 
mov al,'*'  
mov ah,0eh
int 10h 

inc n
dec m

cmp dh,10
je next2
jmp roof

next2: 

mov dl,22
mov dh,10
mov ah,02h
int 10h

mov dx,offset corner
mov ah,09h
int 21h  

mov dh , 10

wall:


inc dh
mov dl,20
mov ah,02h
int 10h
 
mov al,'|'  
mov ah,0eh
int 10h
         
mov dl,35
mov ah,02h
int 10h
 
mov al,'|'  
mov ah,0eh
int 10h 


cmp dh,21
je next3
jmp wall 


next3: 

mov dl,21
mov dh,21
mov ah,02h
int 10h

mov dx,offset corner2
mov ah,09h
int 21h   
 
mov dl,21
mov dh,14
mov ah,02h
int 10h
 
mov al,' '  
mov bl,14
mov cx,8
mov ah,09h
int 10h

 
mov dl,21
mov dh,14
mov ah,02h
int 10h

mov dx,offset window1
mov ah,09h
int 21h  

mov dh , 10

window: 


inc dh 
  
mov dl,27
mov ah,02h
int 10h

mov al,' '  
mov bl,14
mov cx,1
mov ah,09h
int 10h

mov dl,27
mov ah,02h
int 10h
 
mov al,'|'  
mov ah,0eh
int 10h  

cmp dh,14
je next4
jmp window

next4:

mov dl,30
mov dh,17
mov ah,02h
int 10h
 
mov al,' '  
mov bl,9
mov cx,5
mov ah,09h
int 10h

 
mov dl,30
mov dh,17
mov ah,02h
int 10h

mov dx,offset door1
mov ah,09h
int 21h

mov dh , 17

door: 


inc dh 
  
mov dl,29
mov ah,02h
int 10h

mov al,' '  
mov bl,9
mov cx,1
mov ah,09h
int 10h

mov dl,29
mov ah,02h
int 10h
 
mov al,'|'  
mov ah,0eh
int 10h  

cmp dh,21
je end
jmp door  
        
end: 

mov dh,19
mov dl,33
mov ah,02h
int 10h
 
mov al,'O'  
mov ah,0eh
int 10h 

mov dl,40
mov dh,20
mov ah,02h
int 10h

mov dx,offset cse
mov ah,09h
int 21h 


ret
wifi db "((O))$"
corner db "_____________$"
corner2 db "______________$"   
window1 db "______$" 
door1 db "_____$"  
cse db "CSE CLASS$"
m db 28
n db 28  
