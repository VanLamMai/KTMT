include emu8086.inc
.MODEL SMALL
.STACK 100h
.DATA
MSG1 DB 'Nhap so thu nhat:',0
MSG2 DB 13,10,'Nhap so thu hai:',0
MSG3 DB 13,10,'Thuong cua phep chia la:',0
MSG4 DB 13,10,'So du la:',0
a DW ?
b DW ?
thuong DW ?
sodu DB ?
.CODE
mov ax,@data
mov ds,ax

LEA si,MSG1
CALL print_string

CALL scan_num
mov a,cx

LEA si,MSG2
CALL print_string

CALL scan_num
mov b,cx
XOR ax,ax
XOR bx,bx

mov ax,a
mov bx,b
div bx
mov Thuong,ax

LEA si,MSG3
CALL print_string

CALL print_num

LEA si,MSG4
CALL print_string

mov bx,b
MUL bx
MOV bx,ax
MOV ax,a
sub ax,bx
CALL print_num

mov ah,4ch
int 21h

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END