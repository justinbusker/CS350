
.globl f

f:
	ADD X19, X1, #2
	SUB X3, X0, #0
	CBZ X3, .if
	B .else
if:
	ADD X19, XZR, #8
	B .Exit

else:
	ADD X4, X0, X0, lsl #2
	ADD X19, X19, X4

	SUB X0, X0, #1
	ADD X1, X1, #1
	
	B .f
		
