@ Fibonacci Series

.DATA
N: .WORD 10
A: .WORD 

.TEXT
LDR R5,=N
LDR R4,[R5]
LDR R6,=A
MOV R0,#0
MOV R1,#1
STR R0,[R6],#4
STR R1,[R6],#4
SUB R4,R4,#1

loop:
	ADD R3,R0,R1
	MOV R1,R0
	MOV R0,R3
	STR R3,[R6],#4
	SUB R4,R4,#1
	CMP R4,#0
	BNE loop
	SWI 0x011
	



