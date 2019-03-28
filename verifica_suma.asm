
;<Program title>

;data


;code
start: nop

LDA 50H
MOV B, A
LDA 51H

ADD B
JNC suma_correcta

STA 63H
JC fin

suma_correcta: nop
STA 52H

fin: nop

hlt