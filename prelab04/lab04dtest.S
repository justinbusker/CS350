  .globl f
f:
    STP X29, X30, [SP, #-16]!   
    MOV X29, SP                

    STP X19, X20, [SP, #-16]!  

    ADD X19, X1, #2 // b = k+2

    SUBS X3, X0, #0 //check if n == 0
    CBZ X3, .if // Branch to if if CBZ true


    ADD X4, X0, X0, lsl #2 //4*n
    ADD X19, X19, X4 //b + 4*n 

    // n-1 and k+1 for recursion
    SUB X0, X0, #1     
    ADD X1, X1, #1        

    BL f //recurse back to f

    ADD X19, X19, X0 // adding final recursive value

    B .Exit         

.if:
    MOV X19, #8 
    B .Exit    

.Exit:
    ADD X2, X19, X1// b+k for return

    LDP X19, X20, [SP], #16 
    LDP X29, X30, [SP], #16
    RET                        
