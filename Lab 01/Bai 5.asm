.MODEL SMALL
.STACK
.DATA

tb1 DB "Nhap ky tu thu nhat:$"
tb2 DB 10,13,"Nhap ky tu thu hai:$"
tb3 DB 10,13,"Ky tu tong:$"
char DB ?

.CODE

mov ax,@data
mov ds,ax

mov ah,9h
lea dx,tb1
int 21h

mov ah,1
int 21h

mov char,al

mov ah,9h
lea dx,tb2
int 21h

mov ah,1
int 21h

add al,char
mov bl,al

mov ah,9h
lea dx,tb3
int 21h

mov ah,2
mov dl,bl
int 21h

mov ah,4ch
int 21h

END