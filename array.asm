org 100h
mov ax,3
int 10h
mov cx,3
mov si,0
label:

mov al,a[si]
mov ah ,0eh
int 10h
inc si
loop label

a db 67,83,69
