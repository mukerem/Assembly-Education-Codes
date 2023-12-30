org 100h
mov ax,3
int 10h

mov dh,5
mov dl,20
mov ah,2
int 10h

mov cx,41
mov ah,0eh
label:
mov al,'*'
int 10h
loop label     

mov dh,20
mov ah,2
int 10h

mov cx,40
mov ah,0eh
label2:
mov al,'*'
int 10h
loop label2

mov cx,15  
mov dh ,6

label3:

mov dl,20
mov ah,2
int 10h 

mov al,'*'
mov ah,0eh
int 10h    
           
mov dl,60
mov ah,2
int 10h 

mov al,'*'
mov ah,0eh
int 10h 

inc dh   

loop label3  


mov bx,0

mov dl,35
mov dh,9
mov ah,2
int 10h

 
mov dx,offset n
mov ah,09h
int 21h   

mov dl,36
mov dh,12
mov ah,2
int 10h

 
mov dx,offset m
mov ah,09h
int 21h

mov dl,36
mov dh,15
mov ah,2
int 10h

 
mov dx,offset p
mov ah,09h
int 21h

ret                    

n db "WELCOME$"  
m db "TO MY$"
p db "WORLD$"
