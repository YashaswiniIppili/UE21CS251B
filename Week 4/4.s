.text
ldr r0, =num     @ store the address of the array in r0
mov r1, #0       @ initialize sum of zeroes to 0
mov r2, #0	     @ initialize sum of positive numbers to 0
mov r3, #0       @ initialize sum of negative numbers to 0
ldr r5, =len     @ store the address of length of the array in r5
ldr r5, [r5]     @ store the value of the length of the array
mov r6, #0       @ counter initialized to 0

loop:
ldr r4, [r0], #4   @ store element in the array in r4 and traverse throughout
cmp r4, #0         @ compare element with 0
addeq r1, r1, #1   @ if equal then increment number of 0s
addgt r2, r2, #1   @ if greater than 0 then increment number of positive numbers
addlt r3, r3, #1   @ if less than 0 then increment number of negative numbers
add r6, r6, #1     @ increment counter after performing either of the above operations
cmp r6, r5         @ compare counter value with length of the array to know when to stop
bne loop           @ go back to the loop until counter is equal to length of the array

swi 0x011          @ software interrupt

.data
num:.word 1,3,-2,5,0
len:.word 5