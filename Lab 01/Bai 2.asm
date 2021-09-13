.MODEL SMALL
.STACK
.DATA

    tb1 DB 'Hay nhap mot ky tu: $'
    tb2 DB 'Ky tu da nhap: $' 
    clrf DB 13,10,'$'
    
.CODE      
          
    MOV ax, @data
    MOV ds, ax
    
    MOV ah, 9h
    LEA dx, tb1
    int 21h
    
    MOV ah, 1
    int 21h
    
    MOV bl, al
    
    MOV ah, 9h
    LEA dx, clrf
    int 21h
    
    MOV ah, 9h
    LEA dx, tb2
    int 21h
    
    MOV ah, 2
    MOV dl, bl
    int 21h
    
    MOV ah, 4ch
    int 21h 
