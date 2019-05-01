
;<Program title>

jmp start

;data


;code
start: nop

LDA 50H             ;1101 1001
MOV B, A

CMA			        ;1111 1001 
ANI 3CH      		;0011 1000 
MOV C, A

MOV A, B		    ;0000 0110 
ANI 0C3H		    ;0000 0010 

ORA C			    ;1110 0101

STA 55H
 
hlt
