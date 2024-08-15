	
	AREA prog,code,readonly
	MOV R0,#3
	MOV R1,R0
up	ADD R1,#3
	CMP R1,#33
	BEQ down
	ADD R0,R1
	B up
down	LDR R2,=0x40000000
	STR R0,[R2]
stop B stop
	END