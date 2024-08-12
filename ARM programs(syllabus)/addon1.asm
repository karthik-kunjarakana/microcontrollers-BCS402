	AREA ascending, CODE, READONLY
	MOV R5, #4
up2 	MOV R0, R5
	MOV R1, #0x40000000
up 	LDR R2, [R1], #4
	LDR R3, [R1]
	CMP R2, R3
	BCC down
	STR R2, [R1], #-4
	STR R3, [R1], #4
down 	SUBS R0, R0, #1
	BNE up
	SUBS R5, R5, #1		
	BNE up2
stop B stop
	END

;for descending order replace BCC by BCS or BHI