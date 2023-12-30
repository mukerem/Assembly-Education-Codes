org 100h

mov ax,3
int 10h  



mov si,0
 

move: 

cmp m,1 
je up

cmp m,3
je up
jmp down
 
up:
 
mov dl,p
mov dh,m
mov ah,2
int 10h
       
mov al,n[si]
mov ah,0eh
int 10h 

mov al,0
mov ah,0eh
int 10h
       
       
jmp con  

down:
 
mov dl,k
mov dh,m
mov ah,2
int 10h

mov al,0
mov ah,0eh
int 10h 
       
mov al,n[si]
mov ah,0eh
int 10h 
        


con: 


inc k 
dec p  


cmp k,40
je start
jmp move
  
  
start: 

mov k,0  
mov p,79
inc si 
inc m 
cmp si,4
je exit
jmp move          

exit:



ret  

n db 'A','S','T','U' 
k db 0
m db 0  
p db 79   
