
;<Program title>

jmp start

;data


;code
start: nop

LDA 50H    	;0101 1000
MVI B, 55H	;0101 0101
			
ORA B		;0101 1101

STA 55H

hlt
