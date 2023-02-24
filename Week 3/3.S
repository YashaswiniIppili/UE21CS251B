@  Convolution Using MUL instruction
.DATA
A: .WORD 10,20,30,40,50,60,70,80,90,100
B: .WORD 1,2,3,4,5,6,7,8,9,10
C: .WORD
N: .WORD 10
.TEXT
LDR R0,=A 
LDR R1,=B 
LDR R2,=C 
LDR R8,=N 
LDR R9,[R8]
loop:
	LDR R4,[R0],#4
	LDR R5,[R1],#4
	MUL R6,R4,R5
	MOV R7,R6
	STR R7,[R2],#4
	SUB R9,R9,#1
	CMP R9,#0
	BNE loop
	SWI 0x011

	
