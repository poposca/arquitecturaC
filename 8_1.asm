;.mode small
.stack 100h
.data   
Var1 dw ' Enter your characters: $'  
Var2 dw ' Your characters are: $'
.code
Main proc
    
    MOV AX, @data
    MOV DS, AX
    
    LEA DX, Var1
    MOV AH, 9
    int 21h
    
    MOV AH, 1
    int 21h    
    MOV BL,AL
    
    MOV AH, 1
    int 21h
    MOV BH,AL
    
    MOV AH, 1
    int 21h 
    MOV CL, AL
    
    MOV DL, 10
    MOV AH, 2
    int 21h
    
    LEA DX, Var2
    MOV AH, 9
    int 21h   
    
    MOV DL, 10
    MOV AH, 2
    int 21h  
    
    MOV DL, BL
    MOV AH, 2
    int 21h
    
    MOV DL, 10
    MOV AH, 2
    int 21h
    
    MOV DL, BH
    MOV AH, 2
    int 21h
    
    MOV DL, 10
    MOV AH, 2
    int 21h
    
    MOV DL, CL
    MOV AH, 2
    int 21h           
    
    MOV AH, 4Ch
    int 21h
    
Main endp
End main