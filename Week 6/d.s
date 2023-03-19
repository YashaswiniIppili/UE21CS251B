.data
string:    .asciz "MISSISSIPPI"
character: .asciz "S"
.equ SWI_WriteC,0x02
.equ SWI_Exit,0x11

.text
ldr R0,=string
ldr R1,=character
mov R5,#00
ldrb R3,[R1]
loop: ldrb R2,[R0],#1
cmp R2,#0
beq exit
cmp R2,R3
bne loop
add R5,R5,#1
B loop
ldr r0,=string
swi SWI_WriteC
exit:swi SWI_Exit

.end