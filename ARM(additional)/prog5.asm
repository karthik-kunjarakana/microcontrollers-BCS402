	AREA prog,code,readonly
	MOV R0,#9
	LDR R1,=ARRAY
	LDRH R2,[R1],#4
	MOV R3,R2
UP	LDRH R4,[R1],#2
	CMP R2,R4
	BCC down
	MOV R2,R4
down	CMP R3,R4
	BCS down1
	MOV R3,R4
down1	SUBS R0,#1
	BNE UP
	ADD R5,R2,R3
	LDR R1,=0X40000000
	STR R5,[R1]
STOP B STOP
	AREA VAL,DATA, READONLY
ARRAY DCW 0X1,0X2,0X3,0X4,0X5,0X6,0X7,0X8,0X9,0XA
	END