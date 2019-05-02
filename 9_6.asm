;.mode small
.stack 100h
.data   
    
    T1  db  'Introduce your array of numbers: $' 
    n   dw  ?
 
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
   ;;;;;;;;;;;;;;;
   
   ;MOV BL, 0
   MOV CX, 100h
   MOV SI, 200h
   Typing:
        
        MOV AH, 1
        int 21h  
        
        CMP AL, 13
        JE After
        
        MOV [SI], AL
        INC SI 
    
        LOOP Typing
   
   
   After:
        SUB SI, 200h 
        MOV CX, SI 
        MOV SI, 200h 
        
        MOV [400h], 0
   
   Maximum:
        
        MOV BL, [400h]
        CMP [SI], BL
        JG Update
        
        fin_max:
        INC SI
        
        LOOP Maximum
        
   JMP Final
        
   Update:
        MOV BH, [SI]
        MOV [400h], BH
        
        JMP fin_max
   
   Final:
        ;salto de linea
        MOV DL, 13
        MOV AH, 2
        int 21h
   
        MOV DL, 10
        MOV AH, 2
        int 21h
        ;;;;;;;;;;;;;;;
          
        MOV DL, [400h]
        MOV AH, 2
        int 21h
        
   MOV AH, 4Ch
   int 21h
    
Main endp
End main