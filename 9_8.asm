;.mode small
.stack 100h
.data   
    
    T1  db  'Introduce your text: $'
    Arr db  100 dup(?) 
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
   
   MOV CX, 100
   MOV SI, offset Arr
   Typing:
        
        MOV AH, 1
        int 21h  
        
        CMP AL, 13
        JE After
        
        MOV [SI], AL
        INC SI 
    
        LOOP Typing
   
   
   After:
        MOV CX, SI    
        SUB CX, offset Arr
        SUB SI, 1
   
   Final: 
        ;salto de linea
        MOV DL, 13
        MOV AH, 2
        int 21h
   
        MOV DL, 10
        MOV AH, 2
        int 21h
        ;;;;;;;;;;;;;;;
   
   Printing:
        
        MOV DL, [SI]
        MOV AH, 2
        int 21h
        
        DEC SI
        
        LOOP Printing
          
        
   MOV AH, 4Ch
   int 21h
    
Main endp
End main