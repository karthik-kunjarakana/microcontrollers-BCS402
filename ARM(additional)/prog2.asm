	AREA prog, code,readonly
	MOV R2,#10
	LDR R0,=ARRAY
	MOV R1,#0
UP	LDRB R3,[R0],#1
	ADD R1,R3
	SUBS R2,#1
	BNE UP
	LDR R4,=0X40000000
	STR R1,[R4]
STOP B STOP
	AREA VALUES,DATA,READONLY
ARRAY DCB 1,2,3,4,5,6,7,8,9,10
	END
	