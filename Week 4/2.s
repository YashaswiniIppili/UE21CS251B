.text
ldr r0, =a
ldr r1, =b
ldr r0, [r0]
ldr r1, [r1]

@findig 1's compliment of a
mvn r2, r0

@finding 2's compliment of b
rsb r3, r1, #0

.data
a:.word 8
b:.word 3
