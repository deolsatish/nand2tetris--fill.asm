// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Flip.asm

// Switches the values of R1 and R2.

@SCREEN
D=A 
@addr
M=D

@240
D=A
@n
M=D

(LOOP)
   @KBD
   D=M
   @WHITE
   D;JEQ
   @BLACK
   0;JEQ

(BLACK)
   @addr
   A=M
   M=-1
   @32
   D=A
   @addr
   M=D+M
   @LOOP
   0;JMP
(WHITE)
   @addr
   A=M
   M=0
   @32
   D=A
   @addr
   M=M-D
   @LOOP
   0;JMP


(END)
   @END
   0;JMP
