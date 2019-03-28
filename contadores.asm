
;<Program title>

;data


;code


LDA 50H
MVI B, 0H		; en B cuenta los 1

RLC
CC suma
RLC
CC suma
RLC
CC suma
RLC
CC suma
RLC
CC suma
RLC
CC suma
RLC
CC suma
RLC
CC suma

suma: nop
INR B
RC

DCR B

MVI A, 8
SUB B			; en A quedan los 0

STA 52H
MOV A, B
STA 51H

hlt