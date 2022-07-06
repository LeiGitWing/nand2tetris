// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// R2 = R0 * R1 

// n = R0
@R0
D=M
@n
M=D

// m = R1
@R1
D=M
@m
M=D

// sum = 0
@sum
M=0       

(LOOP)
// if n == 0 then goto STOP
@n
D=M
@STOP
D;JEQ

// sum += m
@sum
D=M
@m
D=M+D
@sum
M=D

// n -= 1
@n
M=M-1

// keep looping
@LOOP
0;JMP

(STOP)
// R2 = sum
@sum
D=M
@R2
M=D


(END)
@END
0;JMP