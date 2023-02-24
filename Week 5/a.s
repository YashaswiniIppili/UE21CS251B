.data
array:.word 2,4,6,8,10,12,14,16,18


.text
LDR R0,=array                 
LDMIA R0!,{R1-R7}               ;loading the first seven elements of the array onto registers R1-R7
MOV R8,R5

.end