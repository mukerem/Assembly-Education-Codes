include 'emu8086.inc'
   ORG 100h
   MOV AL, 250
   CMP AL, 5
   JA label1
   PRINT 'AL is not above 5'
   JMP exit
label1:
   PRINT 'AL is above 5'
exit:                     
Printn 'life is good'
Print 'life is good'
   RET