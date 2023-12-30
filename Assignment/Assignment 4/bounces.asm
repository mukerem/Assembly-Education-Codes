org 100h
mov ax,3
int 10h 

mov dh,0

down: 
 

mov dl,40
mov ah,02
int 10h
 
 
mov al,'O'
mov ah,0eh
int 10h  

mov dl,40
mov ah,02
int 10h

mov al,0
mov ah,0eh
int 10h 

inc dh 


  
cmp dh,23
ja start
jmp down

 
 
start:
mov ah,0
mov al,x 

add al,24
mov bl,2
div bl
mov bl,0 
mov x,al
up:   
 
cmp x,23
je end
 
mov dl,40
mov ah,02
int 10h
 
 
mov al,'O'
mov ah,0eh
int 10h  
 

mov dl,40
mov ah,02
int 10h

mov al,0
mov ah,0eh
int 10h 

dec dh

  
cmp dh,x
jb  down
jmp up
  
  
end:
ret      

x db 0