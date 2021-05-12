.text
.global fact

fact:
	STMDB sp!, {r1, r4, lr}
	CMP r0, #1
	BEQ fact_return
	MOV r1, r0
	SUB r0, r0, #1
	BL fact /* Anropa fact funktionen*/
	MUL r4, r1, r0 /* int result = fact(n-1) *n */
	MOV r1, r4
	MOV r0, #1
	SWI 0x6b
	LDMIA sp!, {r1, r4, pc}


fact_return:
	MOV r4, #1
	LDMIA sp!, {r1, r4, pc}


.global main
main:
	MOV r0, #4
	loop:
		BL fact
		MOV r0, #1
		SWI 0x6b
	   	MOV r0, r1
	    ADD r1, r0, #1
		MOV r0, r1
		CMP r0, #4
		BEQ finish
		BL loop


finish:
	BL fact
	MOV r1 , r0
halt:
	MOV r0, #1
	SWI 0x6b
	SWI 0x11

.end
