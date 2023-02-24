@ Factorial using Subroutine 
.DATA
N: .WORD 5

.TEXT
LDR R1,=N
LDR R2,[R1]
MOV R4,#1

BL Factorial
SWI 0x011
Factorial:
	MUl R4,R2,R4
	SUBS R2,R2,#1
	CMP R2,#0
	BNE Factorial
	BX LR


