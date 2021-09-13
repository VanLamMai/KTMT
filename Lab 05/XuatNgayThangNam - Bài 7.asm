include 'emu8086.inc'
.MODEL SMALL
.STACK 100h
.DATA
MSG1 DB "Hom nay la ngay",0
MSG2 DB "thang",0
MSG3 DB "nam",0
.CODE
mov ax,@data
mov ds,ax

mov ah,2Ah
int 21h
mov bh,dh
mov bl,dl

LEA si,MSG1
CALL print_string
;Ngay
mov al,bl
XOR ah,ah
CALL print_num

LEA si,MSG2
CALL print_string
;Thang
mov al,bh
XOR ah,ah
CALL print_num

LEA si,MSG3
CALL print_string

;Nam
MOV ax,cx
CALL print_num

mov ah,4ch
int 21h

RET
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END