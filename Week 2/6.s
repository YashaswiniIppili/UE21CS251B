.text
      
mov r0,#7
mov r1,#1
FACTORIAL:
   mul r1,r0,r1
   subs r0,r0,#1
   bne FACTORIAL

.end