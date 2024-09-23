
.globl f

.section .text
f:
	MOV X19, #0
	ADD X19, X1, #2
	
	SUB X20, X0, XZR
	CBZ X20, Exit


Exit:
	
