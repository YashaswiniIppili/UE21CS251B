@ 1. a)

.text
 
	ldr R0,=A
	ldr R1,=B
	mov R5,#0
	LOOP:
		ldr R2,[R0]
		str R2,[R1]
		add R0,R0,#4
		add R1,R1,#4
		add R5,R5,#1
		cmp R5,#5
		bne LOOP

.data
A: .word 1,1,1,1,1
B: .word 0,0,0,0,0

@ 1. b)

.text
 
	ldr R0,=A
	ldr R1,=B
	mov R5,#0
	LOOP:
		ldrh R2,[R0]
		strh R2,[R1]
		add R0,R0,#4
		add R1,R1,#4
		add R5,R5,#1
		cmp R5,#4
		bne LOOP

.data
A:.hword 0x10,0x11,0x12,0x13,0x14
B:.word 00

@ 1. c)

.text
 
	ldr R0,=A
	ldr R1,=B
	mov R5,#0
	LOOP:
		ldrb R2,[R0]
		strb R2,[R1]
		add R0,R0,#4
		add R1,R1,#4
		add R5,R5,#1
		cmp R5,#4
		bne LOOP

.data
A:.byte 1,2,3,4,5
B:.word 0
