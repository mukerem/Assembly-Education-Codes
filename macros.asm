org 100h
mov ax,3
int 10h

ad macro a,b,c
    mov al,a
    add al,b
    sub al,c  
    add al,48
   
    
    mov ah,0eh
    int 10h
endm

ad 4,1,5,6,7,9 
mov al,56
int 10h

ret
    

