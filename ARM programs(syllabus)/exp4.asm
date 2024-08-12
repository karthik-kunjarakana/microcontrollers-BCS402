	AREA sum, CODE, READONLY
	MOV R1, #10 	; Initialize first number
	MOV R2, #0 	; Clear result
loop 	ADD R2, R2, R1 	; Add number to previous result
	SUBS R1, #01 	; decrement R1 to generate next number
	BNE loop 	; repeat till R1 goes to 0
Stop B Stop
	END