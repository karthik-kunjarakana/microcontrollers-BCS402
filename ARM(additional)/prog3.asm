	AREA prog, code,readonly
	LDR R0,=0x40000000
	MOV R1,#1
	MOV R4,#11
UP	MOV R2,R1
	MUL R3,R2,R1
	STR R3,[R0],#4
	ADD R1,#1
	CMP R1,R4
	BLO UP
STOP B STOP
	END