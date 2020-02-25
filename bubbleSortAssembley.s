		MOV		R12,#0
		MOV		R11,#0x0FC
		MOV		R0,#67
		MOV		R1,#0x100
		STR		R0,[R1]
		ADD		R11,R11,#0x004
		MOV		R0,#55
		MOV		R1,#0x104
		STR		R0,[R1]
		ADD		R11,R11,#0x004
		MOV		R0,#10
		MOV		R1,#0x108
		STR		R0,[R1]
		ADD		R11,R11,#0x004
		MOV		R0,#5
		MOV		R1,#0x10C
		STR		R0,[R1]
		ADD		R11,R11,#0x004
		MOV		R0,#13
		MOV		R1,#0x110
		STR		R0,[R1]
		ADD		R11,R11,#0x004
		MOV		R0,#7
		MOV		R1,#0x114
		STR		R0,[R1]
		ADD		R11,R11,#0x004
		MOV		R0,#0x100
		MOV		R1,#0x104
WHILE	CMP		R1,R11
		BGT		RESET
RESUME	LDR		R2,[R0]
		LDR		R3,[R1]
		CMP		R2,R3
		BGT		SWAP
CONT		STR		R2,[R0]
		STR		R3,[R1]
		ADD		R0,R0,#0x004
		ADD		R1,R1,#0x004
		B		WHILE
SWAP		ADD		R12,R12,#1
		MOV		R4,R2
		MOV		R2,R3
		MOV		R3,R4
		B		CONT
RESET	CMP		R12,#0
		BEQ		FINISH
		MOV		R0,#0x100
		MOV		R1,#0x104
		MOV		R12,#0
		B		RESUME
FINISH
