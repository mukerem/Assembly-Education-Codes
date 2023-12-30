org 100h
mov ax , 3
int 10h
 
mov di , 1
mov dl, 4
mov dh ,2 
mov ah , 02h
int 10h

  

mov dx , offset m
mov ah , 9
int 21h 

 
mov si , 0
 
 ; read 3 charachter from key board
 
mov bl , 0
user:
inc bl 

mov ah , 0
int 16h 

cmp al , a[si]
 
je  continue
jmp break

break:      
mov di , 0

continue:

mov ah , 0eh
int 10h
inc si

cmp bl,3
je next
jmp user


next:
        
mov bx , 0


mov dl, 4
mov dh ,3 
mov ah , 02h
int 10h  



mov dx , offset n
mov ah , 9
int 21h

; read pin /password from useer
 

pin:
inc bl 

mov ah , 0
int 16h 
  
cmp al , a[si]

je  continue2
jmp break2

break2:
mov di , 0

continue2:
mov ah , 0eh
int 10h 
inc si

cmp bl,4
je finish
jmp pin
    


  ; to clear the screen
finish: 

  

mov ax,0b800h
mov ds,ax
mov bx ,140h

clear1: 
mov [bx],0h
add bx,2
cmp bx, 15ah 
je finish2
jmp clear1

finish2: 

mov bx ,1E0h

clear2: 
mov [bx],0h
add bx,2
cmp bx, 1fah 
je end
jmp clear2


end:
mov si,0
cmp di,1
je  login
jmp failed

login:

mov bX , 0

mov dl , 30
mov dh , 10
mov ah , 02
int 10h 

mov al ,'X'
mov bl , 14                 
mov cx ,14
mov ah , 09h
int 10h

mov dx,offset no
mov ah,9
int 21h 

ret

failed:

mov bX , 0  

mov dl , 30
mov dh , 10
mov ah , 02
int 10h 

mov al ,' '
mov bl , 12
mov cx ,12
mov ah , 09h
int 10h

mov dx,offset no
mov ah,9
int 21h


ret


m db "USER: $"   
n db "PIN: $"
yes dw "ACCESS ERANT $"
no dw "ACCESS DENIED $" 
a db 67,83,69,55,56,57,49




