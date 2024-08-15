	AREA prog,code,readonly
	LDR R0,=0x1234
	LDR R1,=0x5678
	ADD R2,R1,R0
	MOV R3,#32
UP	MOVS R2,R2,LSR #1
	ADDCS R4,#1
	ADDCC R5,#1
	SUBS R3,#1
	BNE UP
	LDR R0,=zero
	STR R5,[R0]
	LDR R1,=one
	STR R4,[R0]
STOP B STOP
	AREA result,data,readwrite
zero dcd 0x40000000
one dcd 0x40000001
	END
		