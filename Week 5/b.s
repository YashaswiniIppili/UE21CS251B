.data
A:  .word 2,4,6,8,10,12,14,16,18
B:  .word 10,20,30,40,50,60,70,80,90
C:  .word 0,0,0,0,0,0,0,0,0

.text
LDR R0,=A
LDR R1,=B
LDR R10,=C
MOV R9,#0
LDMIA R0!,{R2,R3}
LDMIA R1!,{R4,R5}
ADD R11,R3,R4
STMIA R10!,{R9,R11}   

.end

