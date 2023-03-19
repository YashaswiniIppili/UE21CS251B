.data
source:      .asciz "HELLO "
destination: .asciz "WORLD"

.text
start:     
ldr R1,=source
ldr R0,=destination
copy:
ldrb R2,[R1],#1
strb R2,[R0],#1
cmp R2,#0
bne copy 	
ldr R0,=source
swi 0x02
ldr R0,=destination
swi 0x02
swi 0x011

.end