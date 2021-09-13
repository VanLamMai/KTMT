.MODEL SMALL
.STACK
.DATA

tb1 DB "Hay nhap mot ky tu:$"
tb2 DB 10,13,"Ky tu dung truoc:$"
tb3 DB ",da nhap:$"     
tb4 DB ",dung sau:$"
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
 
 mov ah,2
 mov dl, char
 dec dl
 int 21h
 
 mov ah,9h
 lea dx,tb3
 int 21h
 
 mov ah,2
 mov dl,char
 int 21h
 
 mov ah,9h
 lea dx,tb4
 int 21h
 
 mov ah,2
 mov al,char
 inc dl
 int 21h
 
END



