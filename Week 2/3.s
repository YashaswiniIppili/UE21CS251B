.text

mov R0,#0
mov R1,#0
SUM:
	add R0,R0,#1
add R1,R1,R0
cmp R0,#99
bne SUM
swi 0x011
