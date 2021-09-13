.MODEL SMALL
.STACK
.DATA     
 
    string1 DB 'Hello, world !$'
    string2 DB 'Hello, solar system !$'
    string3 DB 'Hello, universe !$'
    clrf DB 13,10,'$'
    
.CODE
    
    MOV ax, @data
    MOV ds, ax
    
    MOV ah, 9h
    LEA dx, string1
    int 21h
    
    MOV ah, 9h
    LEA dx, clrf      
    int 21h
    
    MOV ah, 9h
    LEA dx, string2
    int 21h
    
    MOV ah, 9h
    LEA dx, clrf
    int 21h
    
    MOV ah, 9h
    LEA dx, string3
    int 21h
    
    MOV ah, 9h
    LEA dx, clrf
    int 21h
    
    MOV ah, 4ch
    int 21h
    