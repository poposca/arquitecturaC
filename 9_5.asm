;.mode small
.stack 100h
.data   
    
    T1 db 'Introduce your text: $'
    ;Text db 100 dup(?)
 
.code
Main proc
   
   MOV AX, @data
   MOV DS, AX
   
   LEA DX, T1
   MOV AH, 9
   int 21h
   
   ;salto de linea
   MOV DL, 13
   MOV AH, 2
   int 21h
   
   MOV DL, 10
   MOV AH, 2
   int 21h
   ;;;;;;;;;;;;;;;;
   
   MOV BX, 0
   MOV CX, 100
   Typing:
        
        MOV AH, 1
        int 21h
        
        CALL comparing
            
        LOOP Typing
        
   JMP final
   
   
   comparing:
        CMP AL, 'A'
        JE vocal
        CMP AL, 'E'
        JE vocal
        CMP AL, 'I'
        JE vocal
        CMP AL, 'O'
        JE vocal
        CMP AL, 'U'
        JE vocal 
        
        CMP AL, 'a'
        JE vocal
        CMP AL, 'e'
        JE vocal
        CMP AL, 'i'
        JE vocal
        CMP AL, 'o'
        JE vocal
        CMP AL, 'u'
        JE vocal
        
        CMP AL, 13
        JE final
        
        comp_end:
        
        RET
        
   vocal:
       INC BX
       JMP comp_end
   
   final:
       
       ;salto de linea
       MOV DL, 13
       MOV AH, 2
       int 21h
   
       MOV DL, 10
       MOV AH, 2
       int 21h
       ;;;;;;;;;;;;;;;;
       
       
       MOV AX, BX
       MOV CL, 10
       
       DIV CL   
       
       MOV BH, AH
       
       MOV DL, AL
       ADD DL, 30h
       MOV AH, 2
       int 21h
       
       MOV DL, BH
       ADD DL, 30h
       MOV AH, 2
       int 21h  
       
       MOV AH, 4Ch
       int 21h 
    
Main endp
End main