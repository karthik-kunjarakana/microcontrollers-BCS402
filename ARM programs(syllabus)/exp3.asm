	AREA sum, CODE, READONLY
	MOV R1, #10 	; load first 16-bit number to R1 register
	MOV R2, #20 	; load second 16-bit number to R2 register
	MUL R0, R1, R2 	; Multiply and store 32-bit product
Stop B Stop
	END