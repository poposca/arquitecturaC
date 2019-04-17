;.mode small
.stack 100h
.data   
Var1 dw ' The sum of $'  
.code
Main proc
    
    MOV DL, '?'
    MOV AH, 2
    int 21h
    
    MOV AH, 1
    int 21h
    MOV BL, AL
    
    MOV AH, 1
    int 21h
    MOV CL, AL
    
    MOV DL, 10
    MOV AH, 2
    int 21h
    
    MOV AX, @data
    MOV DS, AX
    
    LEA DX, Var1
    MOV AH, 9
    int 21h 
    
    MOV DL, BL
    MOV AH, 2
    int 21h
    
    MOV DL, '&'
    MOV AH, 2
    int 21h
    
    MOV DL, CL
    MOV AH, 2
    int 21H
    
    ADD BL, CL
    SUB BL, 30h
    
    MOV DL, '='
    MOV AH, 2
    int 21h
    
    MOV DL, BL
    MOV AH, 2
    int 21h
    
    
    MOV AH, 4Ch
    int 21h 
   
    
Main endp
End main