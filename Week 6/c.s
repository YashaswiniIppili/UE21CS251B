.data
string:    .asciz "HELLO WORLD"
character: .asciz "D"

.text
ldr R0,=string
ldr R1,=character
mov R5,#00
ldrb R3,[R1]
loop: ldrb R2,[R0],#1
      cmp R2,#0
      beq exit
      cmp  R2,R3
      bne loop
      add R5,R5,#1
      B loop
exit:swi 0x011

.end