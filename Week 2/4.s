.text
mov R0,#2
mov R1,#6
mov R2,#0
mov R3,#0
BARREL: 
    
    add R2,R2,#1
    add R3,R0,R3	
    cmp R1,R2
    bne BARREL

.end