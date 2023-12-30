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

mov ah , 01
int 21h 

cmp al , a[si]
 
je  continue
jmp break

break:      
mov di , 0

continue:


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
mov al,'*'
mov ah , 0eh
int 10h 
inc si

cmp bl,4
je finish
jmp pin    

  ; to clear the screen
finish: 
       
 
mov dh,2
mov dl,4
mov ah,2
int 10h   

mov ah,0eh
mov al,0
mov cx,10
erase:
int 10h

loop erase
            
mov dh,3
mov dl,4
mov ah,2
int 10h   

mov ah,0eh
mov al,0
mov cx,10
erase2:
int 10h

loop erase2
 
 
mov si,0
cmp di,1
je  login
jmp failed

login:



mov dl , 30
mov dh , 10
mov ah , 02
int 10h 

mov al ,' '
mov bl , 14
mov cx ,12
mov ah , 09h
int 10h

mov dx,offset yes
mov ah,9
int 21h 

ret

failed:
 

mov dl , 30
mov dh , 10
mov ah , 02
int 10h 

mov al ,' '
mov bl , 12
mov cx ,13
mov ah , 09h
int 10h

mov dx,offset no
mov ah,9
int 21h


ret


m db "USER: $"   
n db "PIN: $"
yes db  "ACCESS GRANT $"
no db "ACCESS DENIED $"   
a db 'CSE7891'