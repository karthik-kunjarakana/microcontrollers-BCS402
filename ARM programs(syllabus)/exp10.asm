	AREA PROG, CODE, READONLY
	MRS R0, CPSR 		; Move CPSR into R0
	BIC R0, R0, #0XC0 	; Clear bit 7 and 6 (enable IRQ and FIQ)
	MSR CPSR_C, R0 		; Move R0 back to CPSR
	MRS R0, CPSR 		; Move CPSR into R0
	ORR R0, R0, #0XC0 	; Set bit 7 and 6 (disable IRQ and FIQ)
	MSR CPSR_C, R0 		; Move R0 back to CPSR
stop B stop
	END