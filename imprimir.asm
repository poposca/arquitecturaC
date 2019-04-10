;.mode medium
.stack 100h
.data   

.code
Main proc
    MOV DL, 'N'
    MOV AH, 2
    int 21h    
    
    MOV DL, 'I'
    MOV AH, 2
    int 21h   
    
    MOV DL, 'X'
    MOV AH, 2
    int 21h     
    
    MOV DL, 'O'
    MOV AH, 2
    int 21h    
    
    MOV DL, 'N'
    MOV AH, 2
    int 21h      
    
Main endp
End main