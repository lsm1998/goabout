// for one_int16
"".main STEXT size=133 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $88-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	JLS	121
	0x0006 00006 (main.go:6)	SUBQ	$88, SP
	0x000a 00010 (main.go:6)	MOVQ	BP, 80(SP)
	0x000f 00015 (main.go:6)	LEAQ	80(SP), BP
	0x0014 00020 (main.go:7)	MOVW	$0, "".oneType+46(SP)
	0x001b 00027 (<unknown line number>)	NOP
	0x001b 00027 (main.go:18)	MOVW	$1, "".oneType+46(SP)
	0x0022 00034 (main.go:8)	MOVUPS	X15, ""..autotmp_11+48(SP)
	0x0028 00040 (main.go:8)	MOVUPS	X15, ""..autotmp_11+64(SP)
	0x002e 00046 (main.go:8)	MOVWLZX	"".oneType+46(SP), AX
	0x0033 00051 (main.go:8)	CALL	runtime.convT16(SB)
	0x0038 00056 (main.go:8)	LEAQ	type."".OneType(SB), CX
	0x003f 00063 (main.go:8)	MOVQ	CX, ""..autotmp_11+48(SP)
	0x0044 00068 (main.go:8)	MOVQ	AX, ""..autotmp_11+56(SP)
	0x0049 00073 (main.go:8)	MOVUPS	X15, ""..autotmp_11+64(SP)

// for one_int8
"".main STEXT size=126 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $88-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	JLS	119
	0x0006 00006 (main.go:6)	SUBQ	$88, SP
	0x000a 00010 (main.go:6)	MOVQ	BP, 80(SP)
	0x000f 00015 (main.go:6)	LEAQ	80(SP), BP
	0x0014 00020 (main.go:8)	MOVB	$0, ""..autotmp_8+47(SP)
	0x0019 00025 (main.go:8)	MOVUPS	X15, ""..autotmp_12+48(SP)
	0x001f 00031 (main.go:8)	MOVUPS	X15, ""..autotmp_12+64(SP)
	0x0025 00037 (main.go:8)	LEAQ	type."".OneType(SB), AX
	0x002c 00044 (main.go:8)	LEAQ	""..autotmp_8+47(SP), BX
	0x0031 00049 (main.go:8)	CALL	runtime.convTnoptr(SB)
	0x0036 00054 (main.go:8)	LEAQ	type."".OneType(SB), CX
	0x003d 00061 (main.go:8)	MOVQ	CX, ""..autotmp_12+48(SP)
	0x0042 00066 (main.go:8)	MOVQ	AX, ""..autotmp_12+56(SP)
	0x0047 00071 (main.go:8)	MOVUPS	X15, ""..autotmp_12+64(SP)

// 不同点
// 1.在one_int8中，定义了临时变量autotmp_8+47(SP)
// 2.方法调用完成后，one_int16取出了oneType+46(SP)的值，而one_int8通过LEAQ重新从内存设置
