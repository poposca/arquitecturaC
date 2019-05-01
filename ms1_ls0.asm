
;<Program title>

jmp start

;data


;code
start: nop

LDA 50H 		;0001 1001 ->19h

ORI 0C0H		;1100 0000 
			;1101 1001 

ANI 0FCH		;1111 1100 
			;1101 1000 

MOV B, A

CMA			;0010 0111 
ANI 3CH      		;0011 1100 
			;0010 0100 
MOV C, A

MOV A, B		
ANI 0C3H		;1100 0000 

ORA C			;1110 0100 ->e4h

STA 55H

hlt