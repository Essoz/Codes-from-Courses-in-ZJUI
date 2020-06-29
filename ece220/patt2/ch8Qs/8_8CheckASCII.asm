;Patt & Patel
;Introduction to Computing Systems
;Chapter8 ProblemSet Q8.8

;Purpose:This program checks the initial value in memory location x4000 to see if it is a valid ASCII code and if it is a valid ASCII code, prints the character. If the value in x4000 is not a valid ASCII code, the program prints an error message.
;_____________________________________
;|R0	|the character to be printed |
;|R1	|monitor status checker      |
;|R2	|validity checker            |
;|R3	|Temporary Holder	     |


.ORIG x3000

	LDI   R0, LOC
	LD    R3, MXASCII
	ADD   R2, R0, R3
	
	LD    R4, MASK
	AND   R2, R2, R4
	BRp   INV
	
START	LDI   R1, DSR
	BRzp  START
	STI   R0, DDR
	BRnzp END

INV	LEA   R3, MSG
INV1	LDI   R1, DSR
	BRzp  INV1
	LDR   R0, R3, #0
	BRz   END
	STI   R0, DDR
	ADD   R3, R3, #1
	BRnzp INV1

END	HALT

MXASCII	.FILL xFF81
LOC	.FILL x4000
MSG	.STRINGZ "The ASCII code is INVALID"
DSR	.FILL xFE04
DDR	.FILL xFE06
MASK	.FILL xFF80
.END
