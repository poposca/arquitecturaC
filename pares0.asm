
;<Program title>

jmp start

;data


;code
start: nop


LDA 50H                 ;1100 0011
MVI B, 55H		;0101 0101
ANA B			;0100 0001

STA 55H

hlt			