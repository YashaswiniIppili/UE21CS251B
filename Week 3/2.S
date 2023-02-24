@ smallest number in an array
.DATA
A: .WORD 100,300,400,800,405,850,652,199
B: .WORD 8
.TEXT

LDR R5,=B
LDR R4,[R5];counter
LDR R1,=A 
LDR R2,[R1],#4
MOV R3,#0xAA
SUB R4,R4,#1
loop:
	CMP R2,R3
	MOVLT R3,R2
	ADD R1,R1,#4
	LDR R2,[R1]
	SUB R4,R4,#1
	CMP R4,#0
	BNE loop
	SWI 0x011


