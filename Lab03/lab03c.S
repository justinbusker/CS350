.global questionfour

questionfour:
	MOVZ X1, #6 // loading first digit of my UIN
	MOVZ X2, #10
	MOVZ X4, #0
	LDR X3, =array

loop:
	CBZ X2, Exit
	STR W1, [X3, X4, LSL #2]

	ADD X1, X1, #1
	ADD X4, X4, #1
	SUB X2, X2, #1
	B loop
Exit:
	MOV X0, X1
	RET



.data
array:
	.space 40
	.section .text
	.align 2
