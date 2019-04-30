;.mode small
.stack 100h
.data   
.code
Main proc
    MOV AL, 0
    MOV CL, 10
    MOV DH, 10
    
    L1:
       ADD AL, 4
       MOV BH, AL
       
       DIV DH ;problema;       
       
       ADD AL, 30h
       MOV DL, AL
       MOV AH, 2
       int 21h
        
       MOV DL, ' '
       MOV AH, 2
       int 21h 
       
       MOV AL, BH
       
       loop L1 
    
   
   
    
Main endp
End main