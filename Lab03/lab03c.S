.global questionfour

questionfour:
	MOVZ X1, #6 // loading first digit of my UIN
	MOVZ X2, #10 // number of times it loops
	MOVZ X4, #0 // index of array
	LDR X3, =array

loop:
	CBZ X2, Exit
	STR W1, [X3, X4, LSL #2] // storing value of W1 (X1) into the index of array at X3[X4], LSL by 2 because it is an array of words

	ADD X1, X1, #1 //add 1 to j
	ADD X4, X4, #1 // adding 1 to index
	SUB X2, X2, #1 //subtracting one from i in loop
	B loop
Exit:
	MOV X0, X1
	RET



.data
array:
	.space 40 //initialize with space of 40 because 10 words * 4 bytes = 40
	.section .text
	.align 2 // aligns so array is by words
