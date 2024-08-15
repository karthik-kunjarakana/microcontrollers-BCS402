	AREA Prog, CODE, READONLY    
    LDR R0, =source
    LDR R1, =destination
    MOV R2, #10          
UP LDR R3, [R0], #4    
    STR R3, [R1], #4      
    SUBS R2, R2, #1       
    BNE UP    
STOP B STOP    
	AREA value,DATA,readonly
source DCD 1, 2, 3, 4, 5, 6, 7, 8, 9, 10  
	AREA value1,data,readwrite
destination dcd 00
	END