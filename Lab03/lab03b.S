.globl questionthree

questionthree:
	MOVZ X1, #10 //variable for loop of 10
	LDR X0, =uin //loading uin value from .data
	LDR X0, [X0]

loop:
	CBZ X1, Exit //checking if X1 is 0
	SUB X0, X0, #1 //subtracting 1 from X0 (uin) 632003978
	SUB X1, X1, #1 //subtract 1 from X1
	B loop //loop back and check if X1 is 0 again

Exit:
	RET




.data
uin:	.word	38
