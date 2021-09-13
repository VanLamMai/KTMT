include 'emu8086.inc'
.MODEL SMALL
.STACK 100h
.DATA           
MSG1 DB 'Nhap chieu dai:',0
MSG2 DB 13,10,'Nhap chieu rong:',0
MSG3 DB 13,10,'Chieu dai la:',0
MSG4 DB 13,10,'Chieu rong la:',0
MSG5 DB 13,10,'Chu vi la:',0
MSG6 DB 13,10,'Dien tich la:',0
dai DW ?
rong DW ?
.CODE
mov ax,@data
mov ds,ax

LEA si,MSG1
CALL print_string

CALL scan_num
mov dai,cx

LEA si,MSG2
CALL print_string

CALL scan_num
mov rong,cx

LEA si,MSG3
CALL print_string

mov ax,dai
CALL print_num

LEA si,MSG4
CALL print_string

mov ax,rong
CALL print_num

LEA si,MSG5
CALL print_string
mov ax,dai
ADD ax,rong
mov bx,2
MUL bx
CALL print_num

LEA si,MSG6
CALL print_string
mov ax,rong
MUL dai
CALL print_num

mov ah,4ch
int 21h

DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_SCAN_NUM

END