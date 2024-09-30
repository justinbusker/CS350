.globl factorial

factorial:
	CMP X0, #0 // see if input 0
	BNE loop

	MOV X0, #1
	RET

loop:
	STP X29, X30, [SP, #-16]! // store stack pointer and return 
	MOV X29, SP // move stack pointer val to 29
	STP X19, X20, [SP, #-16]! // storing X19 and X20 on SP to get values

	MOV X19, X0 // moving value from input to X19

	SUB X0, X0, #1 // subbing 1 from input to recurse back into factorial

	BL factorial

	MOV X1, X19

	BL my_mul // calling my mul for recursion

	LDP X19, X20, [SP], #16 // fixing the stack
	LDP X29, X30, [SP], #16
	RET // return
