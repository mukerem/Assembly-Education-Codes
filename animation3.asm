org 100h

mov ax,3
int 10h  
  
mov si,0
move: 
 

mov m,0 
mov cx,4
 
it:   

cmp si,3
ja zero 
jmp con
zero:
sub si,4 

con:
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
  
inc si 
inc m

loop it 

inc si

 

inc k 


cmp k,41
je exit
jmp move
  
  
        

exit:



ret  

n db 'A','S','T','U' 
k db 0
m db 0
