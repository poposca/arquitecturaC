;.mode medium
.stack 100h
.data   

.code
Main proc
    
    MOV AH, 1
    int 21h
    
    SUB AL, 30h
    MOV DL, AL  
    
    MOV AH, 1
    int 21h
 
    ADD DL, AL
    
    MOV AH, 2
    int 21h
    
    MOV AH, 4Ch
    int 21h
    
Main endp
End main