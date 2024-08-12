	AREA PROG, CODE, READONLY
	MOV r0, #25 	; r0 = 0x00000019
	MOV r1, #35 	; r1 = 0x00000023
	ADD r2, r1, r0 	; r2 = r1 + r0 = 0x0000003C
	SUB r3, r1, r0 	; r3 = r1 – r0 = 0x0000000A
	RSB r4, r1, r0 	; r4 = 0 – r1 = 0xFFFFFFF6
	AND r5, r1, r0 	; r5 = r1 & r2 = 0x00000001
	ORR r6, r1, r0 	; r6 = r1 | r2 = 0x0000003B
stop B stop
	END