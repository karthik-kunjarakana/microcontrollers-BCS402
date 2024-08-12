	AREA large, CODE, READONLY
	MOV R0, #4 		; load count to R0 register (N – 1)
	LDR R1, =DATA1 		; load the address of DATA1 into R1
	LDR R3, [R1], #4 	; load the data from memory into R3 and increment address
up 	LDR R4, [R1], #4 	; load the data from memory into R4 and increment address
	CMP R3, R4 		; compare the numbers
	BCC down 		; branch to label down, if R3 is greater
	MOV R3, R4 		; otherwise copy greater number into R3
down 	SUBS R0, R0, #1 	; decrement R0 (count) by 1
	BNE up 			; repeat till R0 goes to 0
	LDR R1, =LARGEST 	; load the address of LARGEST into R1
	STR R3, [R1] 		; store the largest number
stop B stop

	AREA array, DATA, READONLY
DATA1 DCD 8, 3, 6, 14, 5
	AREA result, DATA, READWRITE
LARGEST DCD 0
	END