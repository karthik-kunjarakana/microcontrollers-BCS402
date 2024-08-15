	AREA prog, code,readonly
	LDR R0,=values
	LDR R1,=dest
	LDMIA R0!,{R2-R6}
	STMIA R1!,{R2-R6}
	LDMIA R0!,{R2-R6}
	STMIA R1!,{R2-R6}
STOP B STOP
	AREA val,data,readonly
values dcd 1,2,3,4,5,6,7,8,9,10
	AREA des,data,readwrite
dest dcd 00
	END