// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Initialize answer to 0
@2
M = 0

// If R0 is 0, the answer should be 0
@0
D=M // D = Memory[0]
@END
D;JEQ // If D = 0 goto END

// If R1 is 0, the answer should be 0
@1
D=M // D = Memory[0]
@END
D;JEQ // If D = 0 goto END

// Otherwise, we should add R1 R0 times
(LOOP)

    // if R0 is 0, goto END
    @0
    D=M
    @END
    D;JEQ

    // otherwise, add R1 to R2
    @1
    D=M
    @2
    M=M+D

    // decrement R0
    @0
    M=M-1

    @LOOP
    0;JMP // goto LOOP


(END)
    @END
    0;JMP