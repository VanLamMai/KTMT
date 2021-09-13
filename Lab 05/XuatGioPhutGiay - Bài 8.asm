include emu8086.inc
.MODEL SMALL
.STACK  100h
.DATA
MSG1 DB "Bay gio la",0
MSG2 DB "gio",0
MSG3 DB "phut",0
MSG4 DB "giay",0
giay DB ?
.CODE
mov ax,@data
mov ds,ax

;Lay gio he thong
mov ah, 2ch
int 21h
mov bh,ch
mov bl,cl

LEA si,MSG1
CALL print_string

;Gio
mov al,bh
XOR ah,ah
CALL print_num

LEA si,MSG2
CALL print_string

;Phut
mov al,bl
XOR ah,ah
CALL print_num

LEA si,MSG3
CALL print_string

;Giay
mov al,dh
XOR ah,ah
CALL print_num

LEA si,MSG4
CALL print_string

mov ah,4ch
int 21h

RET
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

END
