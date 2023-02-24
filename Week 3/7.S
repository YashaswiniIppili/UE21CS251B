@ Multiplication using Shift Method

.TEXT 

MOV R0,#1
MOV R1,#1
MOV R2,#1
MOV R3,#1
MOV R4,#1

@Multiplication with 3
ADD R0,R0,R0,LSL #1
@Multiplication with 5
ADD R1,R1,R1,LSL #2
@Multiplication with 7
RSB R2,R2,R2,LSL #3
@Multiplication with 10
ADD R3,R3,R3,LSL #2
MOV R3,R3,LSL#1 
@Multiplication with 6
ADD R4,R4,R4,LSL #1
MOV R4,R4,LSL#1 



