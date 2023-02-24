@ 2. a)

.text
ldr r1,=a
ldr r2,=sum
mov r4, #0
mov r5, #1

TEST:
ldr r3,[r1]
add r4,r4,r3
add r1,r1,#4
add r5,r5,#1
cmp r5,#11
bne TEST
str r4,[r2]
swi 0x011

.data
a:.word 10,20,30,40,50,60,70,80,90,100
sum:.word 0

@ 2. b)

.text
ldr r1,=a
ldr r2,=sum
mov r4, #0
mov r5, #1

TEST:
ldrh r3,[r1]
add r4,r4,r3
add r1,r1,#2
add r5,r5,#1
cmp r5,#11
bne TEST
strh r4,[r2]
swi 0x011

.data
a:.hword 0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x20
sum:.word 00


@ 2. c)

.text
ldr r1,=a
ldr r2,=sum
mov r4, #0
mov r5, #1

TEST:
ldrb r3,[r1]
add r4,r4,r3
add r1,r1,#2
add r5,r5,#1
cmp r5,#11
bne TEST
strb r4,[r2]
swi 0x011

.data
a:.byte 1,2,3,4,5,6,7,8,9,10
sum:.word 0


