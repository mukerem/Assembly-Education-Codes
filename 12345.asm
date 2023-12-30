org 100h
mov ax,3
int 10h
 
mov al,49
mov ah,0eh
iter:   

int 10h
inc al

cmp al,54
je end
jmp iter

end:
ret
