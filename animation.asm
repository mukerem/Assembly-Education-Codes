org 100h

mov ax,3
int 10h  



mov si,0
  
   

move: 

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

 


 

inc k 


cmp k,39
je start
jmp move
  
  
start:
mov k,0
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