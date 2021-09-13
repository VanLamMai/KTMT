.MODEL SMALL
.STACK 100h
.DATA
MSG1 DB 'Nhap day so nhi phan:$'
MSG2 DB 13,10,'Day so nhi phan la:$'
temp DB ?
.CODE
mov ax,@data
mov ds,ax

lea dx,MSG1
mov ah,9h
int 21h

xor bx,bx
xor cx,cx
RepeatInput:
mov ah,1
int 21h
cmp al,13
je Xuat
inc cx
cmp al,'0'
jb EndPro
cmp al,'1'
ja EndPro
and al,0Fh
shl bx,1
or bl,al
jmp RepeatInput

Xuat:
cmp cx,0
je EndPro
xor cx,cx
mov cx,16
lea dx,MSG2
mov ah,9h
int 21h

For:
rol bx,1
Jc Out1

Out0:
mov temp,'0'
jmp Output

Out1:
mov temp,'1'

Output:
mov ah,2
mov dl,temp
int 21h
loop For

EndPro:
mov ah,4ch
int 21h

mov ah,4ch
int 21h

END