.data
Var1 db '1'
Var2 db ?
Var3 db '1235$'

.Code
Main Proc
    
    MOV AX, @data
    MOV DS, AX
    
    MOV DL, Var1
    MOV AH, 2
    int 21h
    
    MOV VAR2, BL
    MOV DL, VAR3
    
    LEA DX, Var3
    
    MOV AH,9
    int 21h        
        
Main Endp
End main