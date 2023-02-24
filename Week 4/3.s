.data 
p:.word 3
.text
    ldr r0, =p
    ldr r1, [r0]
    cmp r1, #0
    bgt positive

negative:
    mov r0, #1
    b eop

positive:
    mov r0, #0

eop:
    bx lr