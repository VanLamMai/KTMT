.MODEL SMALL
.STACK 100h
.DATA
MSG1 DB "Nhap vao so nhi phan: $"
MSG2 DB 13,10,"So nhi phan vua nhap: $"
dem DB ?
.CODE
mov ax,@data
mov ds,ax
mov dem,0

lea dx,MSG1
mov ah,9h
int 21h

xor ax,bx

mov ah,1

Nhap:
cmp dem, 16
je XuatKetQua
int 21h
cmp al,13
je XuatKetQua
and al,0Fh
shl bx,1
or bl,al
inc dem
jmp Nhap

XuatKetQua:
mov cx,16
lea dx,MSG2
mov ah,9
int 21h

For:
shl bx,1
jb Print1
mov dl,'0'
mov ah,2
int 21h
jmp exit

Print1:
mov dl,'1'
mov ah,2
int 21h

Exit:
dec cx
cmp cx,0
jne for

mov ah,4ch
int 21h

END