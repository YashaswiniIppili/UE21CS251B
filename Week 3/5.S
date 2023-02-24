.TEXT        ; MAIN Procedure
LDR R4, =A
MOV R1, #11
MOV R2, #10
MOV R3, #02
STMFD R13!, {R1,R2,R3}                 
BL  ADDFun        ; Call to ADD Procedure
STR R0, [R4]
SWI 0x11

ADDFun:  LDMFD R13!, { R4, R5,R6}       ; ADD Procedure
                  ADD R0, R4, R5               
                  STMFD R13!, {R0,R6,LR}                 
                  BL MULFun                                ; Call to MUL Procedure
                  MOV PC, LR                                ; Return to Main Procedure
MULFun:  LDMFD R13!, { R4, R5,LR}            
                   MUL R0, R4, R5               
                   MOV PC, LR                           
				
.DATA
A:    .WORD  0