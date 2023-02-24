.text
ldr r0, =number             @ store the address of the number in r0
ldr r0, [r0]                @ store the value of the number back in r0
mov r1, #0                  @ number of 1s
mov r2, #0                  @ number of 0s
mov r3, #0                  @ counter 
loop:
	cmp r0, #0            @ compare the left most bit with 0
	addeq r2, r2, #1      @ if number is equal to 0 then increment number of zeroes
	addgt r2, r2, #1	    @ if number is positive that is when sign bit is 0 you still increment number of zeroes
	addlt r1, r1, #1      @ if number is negative that is when sign bit is 1 you increment number of ones
	mov r0, r0, lsl #1    @ keep shifting the number to the left by one bit
	add r3, r3, #1        @ increment counter
	cmp r3, #32           @ stop comparing if 32 bits are completed
bne loop

swi 0x011                   @ system interupt

.data
number:.word 0x01010101