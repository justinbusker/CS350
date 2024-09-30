.globl factorial

factorial:
	CMP X0, #0
	BNE loop

	MOV X0, #1
	RET

loop:
	STP X29, X30, [SP, #-16]!
	MOV X29, SP
	STP X19, X20, [SP, #-16]!

	MOV X19, X0

	SUB X0, X0, #1

	BL factorial

	MOV X1, X19

	BL my_mul

	LDP X19, X20, [SP], #16
	LDP X29, X30, [SP], #16
	RET
