org 100h

mov ax,3
int 10h  

move: 
 
mov si,0 
mov m,0 
mov cx,4
 
it:   

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
inc si 
inc m

loop it 


 

inc k 
dec p


cmp k,40
je exit
jmp move
  
  
        

exit:



ret  

n db 'A','S','T','U' 
k db 0
m db 0
p db 79