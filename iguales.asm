;.mode small
.stack 100h
.data   
Var1 dw ' Son iguales$'
Var2 dw ' Son diferentes$'
.code
Main proc

    MOV AH, 1
    int 21h
    MOV DL, AL
    
    MOV AH, 1
    int 21h   
    
    CMP DL, AL
    JE iguales
    MOV AX, @data
    MOV DS, AX
    LEA DX, Var2
    MOV AH, 9
    int 21h
    jmp fin
    
    iguales:
        MOV AX, @data
        MOV DS, AX
        LEA DX, Var1
        MOV AH, 9
        int 21h
    fin:
    
Main endp
End main