.text

mov R0,#13
mov R1,#27
mov R2,#51
@ different input cases
@ mov R0,#69
@ mov R1,#69
@ mov R2,#73

@ mov R0,#20
@ mov R1,#84
@ mov R2,#84

cmp R0,R1  
beq if

cmp R1,R2 
beq elif

mul R4,R1,R0 
B done

if:
add R2,R0,R1
B done

elif:
sub R3,R0,R1

done: