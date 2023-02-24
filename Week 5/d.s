.data
A:    .word 2,4,6,8,10,12,14,16,18    
B:    .word 10,20,30,40,50,60,70,80,90   
C:    .word 0,0,0,0,0,0,0,0,0            

.text
LDR R7,=A                      
LDR R8,=B                      
MOV R1,#0                       
MOV R3,#3                       
LDR R5,=C                      

fori:                             
   MOV R2,#0                           
   forj:                              
       MOV R6,#0
       MUL R3,R1,R3                    
       ADD R3,R3,R2
       LDMIA R7!,{R10}                
       LDMIA R8!,{R11}   
       ADD R6,R10,R11                  
       ADD R2,R2,#1                    
       CMP R2,#3                       
       STMIA R5!,{R6}                
       BNE forj                   
   ADD R1,R1,#1                    
   CMP R1,#3
BNE fori                          

.end