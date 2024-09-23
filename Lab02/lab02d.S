.section .text
.globl lab02d

lab02d:
	MOV X1, X0
	ADD X1, X1, #1000

	ADRP X2, myvalue
	ADD X2, X2, :lo12:myvalue
	STR X1, [X2]

	MOV X0, X2

	RET	
	


.section .data

myvalue: .dword
