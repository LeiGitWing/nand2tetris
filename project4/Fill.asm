// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// persudo code is 
// i = 8192
// loop:
//      while i > -1:
//          if key > 0:
//              black() which is screen[i] = -1
//          else:
//              white() which is screen[i] = 0
//          i--
(START)
    @8192
    D=A
    @i
    M=D

(LOOP)
    @i
    M=M-1
    D=M
    @START
    D;JLT    // if i-1 < 0 goto the START

    @KBD     // must use this to represent the input from keyboard and it's case sensetive
    D=M
    @WHITE
    D;JEQ
    @BLACK
    0;JMP
    

(BLACK)
    @SCREEN
    D=A
    @i
    A=D+M
    M=-1
    @LOOP
    0;JMP

(WHITE)
    @SCREEN
    D=A
    @i
    A=D+M
    M=0
    @LOOP
    0;JMP