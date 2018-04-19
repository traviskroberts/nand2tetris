@R2
M=0

// if R0 is 0, goto end
@R0
D=M
@END
D;JEQ

// if R1 is 0, goto end
@R1
D=M
@END
D;JEQ

(LOOP)
  // if R1 has been reduced to 0, we're done
  @R1
  D=M
  @END
  D;JEQ

  // add R0 to R2
  @R0
  D=M
  @R2
  M=D+M

  // subtract one from R1
  @R1
  M=M-1

  // repeat loop
  @LOOP
  0;JMP
(END)
@END
0;JMP
