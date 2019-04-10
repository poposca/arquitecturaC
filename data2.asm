.data

Var1 db 'Hola$'
Var2 db 'Mundo$'

.code 
Main Proc
    
    MOV AX, @data
    MOV DS, AX
    
    LEA DX, Var1
    MOV AH, 9
    int 21h    
    
    ;print new line
    MOV DL, 10
    MOV AH, 2
    Int 21h
    
    LEA DX, Var2
    MOV AH, 9
    int 21h   
        
Main Endp
End Main