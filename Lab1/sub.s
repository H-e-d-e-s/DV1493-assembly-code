    .text
    .global mul_n
mul_n:
  STMDB sp!, {r1, r4, lr}
  CMP r0,#1
  BEQ mul_one
  MOV r1, r0
  SUB r0, r0, #1
  BL mul_n
  MUL r5, r1, r5
  /*SUB r1,r1,#1*/
  /*SWI 0x6b*/
  LDMIA sp!, {r1, r4, pc}

mul_one:
  	MOV r4, #1
    LDMIA sp!, {r1, r4, pc}

    .global main
main:
  MOV r0, #10
  MOV r5, #1
  BL mul_n
  loop:
    MOV r1,r0
    MOV r0,#1
    ADD r3, r3,#1
    MOV r1,r3
    SWI 0x6b
    CMP r1, #10
		BEQ finish
  BL loop
finish:
      MOV r1 , r5
halt:
  MOV r0, #1
  SWI 0x6b
  SWI 0x11

.end
