
;<Program title>

jmp start

;data


;code
start: nop


LDA 50H			;0001 1001

MOV B, A		;0001 1001

ANI 0Fh			;0000 1001

STA 2001h

MOV A, B

ANI 0F0H		;0001 0000

RRC			;0000 1000
RRC			;0000 0100
RRC			;0000 0010
RRC			;0000 0001

STA 2002h

hlt