.text
ldr r0, =p1
ldr r1, =p2
ldr r2, =q1
ldr r3, =q2
ldr r4, [r1]
ldr r5, [r2]

ldr r0, [r0] 
ldr r1, [r1]
ldr r2, [r2]
ldr r3, [r3]

adds r6, r0, r2      @add the right half
adc r7, r1, r3       @add the left half

str r6, [r4]        @store right half's sum
str r7, [r5]        @store left half's sum
swi 0x011

.data
p1:.word 0x00000000
p2:.word 0x00000001
q1:.word 0x00000000
q2:.word 0x00000003
r1:.word 0
r2:.word 0
