	AREA onezero, CODE, READONLY
	MOV R6, #2 		; load count (total numbers) into R6 register
	LDR R5, =DATA1 		; load the address of DATA1 into R5
up2 	LDR R0, [R5], #4 	; load the data from memory into R0 and increment address
	MOV R1, #32 		; load count (shift) into R1 register
up 	MOVS R0, R0, LSR #1 	; shift the data by 1-bit position
	ADDCS R3, R3, #1 	; if bit is 1, then increment count of ones by 1
	ADDCC R4, R4, #1 	; if bit is 0, then increment count of zeros by 1
	SUBS R1, R1, #1 	; decrement R1 (shift count) by 1
	BNE up 			; repeat till R1 goes to 0
	ADD R5, R5, #4 		; add 4 to get next memory location address
	SUBS R6, R6, #1 	; decrement R6 (number count) by 1
	BNE up2 		; repeat till R6 goes to 0
stop B stop

	AREA array, DATA, READONLY
DATA1 DCD 0X66666666, 0X99999999
	END