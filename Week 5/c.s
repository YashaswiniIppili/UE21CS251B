.data
array:  .word 2,4,6,8,10,12,14,16,18   
rowsum: .word 0,0,0                        

.text
LDR R7,=array                  
MOV R1,#0                       
MOV R3,#3
LDR R5,=rowsum                 

for:                             
   MOV R6,#0       
   LDMIA R7!,{R8,R9,R10}
   ADD R6,R8,R9
   ADD R6,R6,R10
   STMIA R5!,{R6}                         
   ADD R1,R1,#1                        
   CMP R1,#3      
BNE for                             

.end