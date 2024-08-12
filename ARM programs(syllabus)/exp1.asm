	AREA PROG, CODE, READONLY
	MOV r0, #0x55 	; r0 = 0x00000055
	MOV r1, #0xAA 	; r1 = 0x000000AA
	ADD r2, r1, r0 	; r2 = r1 + r0 = 0x000000FF
stop B stop
	END