// for one_int16
"".main STEXT size=165 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $88-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	JLS	154
	0x000a 00010 (main.go:6)	SUBQ	$88, SP
	0x000e 00014 (main.go:6)	MOVQ	BP, 80(SP)
	0x0013 00019 (main.go:6)	LEAQ	80(SP), BP
	0x0018 00024 (main.go:7)	MOVW	$0, "".oneType+30(SP)
	0x001f 00031 (main.go:8)	LEAQ	"".oneType+30(SP), AX
	0x0024 00036 (main.go:8)	CALL	"".SetOneType(SB)
	0x0029 00041 (main.go:8)	MOVQ	AX, ""..autotmp_10+40(SP)
	0x002e 00046 (main.go:8)	MOVQ	BX, ""..autotmp_11+32(SP)
	0x0033 00051 (main.go:8)	MOVUPS	X15, ""..autotmp_2+48(SP)
	0x0039 00057 (main.go:8)	MOVUPS	X15, ""..autotmp_2+64(SP)
	0x003f 00063 (main.go:8)	MOVWLZX	"".oneType+30(SP), CX
	0x0044 00068 (main.go:8)	MOVL	CX, AX
	0x0046 00070 (main.go:8)	CALL	runtime.convT16(SB)
	0x004b 00075 (main.go:8)	LEAQ	type."".OneType(SB), CX
	0x0052 00082 (main.go:8)	MOVQ	CX, ""..autotmp_2+48(SP)
	0x0057 00087 (main.go:8)	MOVQ	AX, ""..autotmp_2+56(SP)
	0x005c 00092 (main.go:8)	MOVQ	""..autotmp_10+40(SP), CX
	0x0061 00097 (main.go:8)	TESTQ	CX, CX
	0x0064 00100 (main.go:8)	JEQ	108
	0x0066 00102 (main.go:8)	MOVQ	8(CX), AX
	0x006a 00106 (main.go:8)	JMP	111
	0x006c 00108 (main.go:8)	MOVQ	CX, AX
	0x006f 00111 (main.go:8)	MOVQ	AX, ""..autotmp_2+64(SP)
	0x0074 00116 (main.go:8)	MOVQ	""..autotmp_11+32(SP), DX
	0x0079 00121 (main.go:8)	MOVQ	DX, ""..autotmp_2+72(SP)
	0x007e 00126 (main.go:8)	LEAQ	""..autotmp_2+48(SP), AX
	0x0083 00131 (main.go:8)	MOVL	$2, BX
	0x0088 00136 (main.go:8)	MOVQ	BX, CX
	0x008b 00139 (main.go:8)	CALL	fmt.Println(SB)
	0x0090 00144 (main.go:9)	MOVQ	80(SP), BP
	0x0095 00149 (main.go:9)	ADDQ	$88, SP
	0x0099 00153 (main.go:9)	RET
	0x009a 00154 (main.go:9)	NOP
	0x009a 00154 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x009f 00159 (main.go:6)	NOP
	0x00a0 00160 (main.go:6)	JMP	0

"".SetOneType STEXT nosplit size=10 args=0x8 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (main.go:17)	TEXT	"".SetOneType(SB), NOSPLIT|ABIInternal, $0-8
	0x0000 00000 (main.go:18)	MOVW	$1, (AX)
	0x0005 00005 (main.go:19)	XORL	AX, AX
	0x0007 00007 (main.go:19)	XORL	BX, BX
	0x0009 00009 (main.go:19)	RET

// for one_int8
"".main STEXT size=172 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $88-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	JLS	162
	0x000a 00010 (main.go:6)	SUBQ	$88, SP
	0x000e 00014 (main.go:6)	MOVQ	BP, 80(SP)
	0x0013 00019 (main.go:6)	LEAQ	80(SP), BP
	0x0018 00024 (main.go:7)	MOVB	$0, "".oneType+30(SP)
	0x001d 00029 (main.go:8)	MOVB	$0, ""..autotmp_1+31(SP)
	0x0022 00034 (main.go:8)	LEAQ	"".oneType+30(SP), AX
	0x0027 00039 (main.go:8)	CALL	"".SetOneType(SB)
	0x002c 00044 (main.go:8)	MOVQ	AX, ""..autotmp_9+32(SP)
	0x0031 00049 (main.go:8)	MOVQ	BX, ""..autotmp_10+40(SP)
	0x0036 00054 (main.go:8)	MOVUPS	X15, ""..autotmp_3+48(SP)
	0x003c 00060 (main.go:8)	MOVUPS	X15, ""..autotmp_3+64(SP)
	0x0042 00066 (main.go:8)	LEAQ	type."".OneType(SB), AX
	0x0049 00073 (main.go:8)	LEAQ	""..autotmp_1+31(SP), BX
	0x004e 00078 (main.go:8)	CALL	runtime.convTnoptr(SB)
	0x0053 00083 (main.go:8)	LEAQ	type."".OneType(SB), CX
	0x005a 00090 (main.go:8)	MOVQ	CX, ""..autotmp_3+48(SP)
	0x005f 00095 (main.go:8)	MOVQ	AX, ""..autotmp_3+56(SP)
	0x0064 00100 (main.go:8)	MOVQ	""..autotmp_9+32(SP), CX
	0x0069 00105 (main.go:8)	TESTQ	CX, CX
	0x006c 00108 (main.go:8)	JEQ	116
	0x006e 00110 (main.go:8)	MOVQ	8(CX), AX
	0x0072 00114 (main.go:8)	JMP	119
	0x0074 00116 (main.go:8)	MOVQ	CX, AX
	0x0077 00119 (main.go:8)	MOVQ	AX, ""..autotmp_3+64(SP)
	0x007c 00124 (main.go:8)	MOVQ	""..autotmp_10+40(SP), DX
	0x0081 00129 (main.go:8)	MOVQ	DX, ""..autotmp_3+72(SP)
	0x0086 00134 (main.go:8)	LEAQ	""..autotmp_3+48(SP), AX
	0x008b 00139 (main.go:8)	MOVL	$2, BX
	0x0090 00144 (main.go:8)	MOVQ	BX, CX
	0x0093 00147 (main.go:8)	CALL	fmt.Println(SB)
	0x0098 00152 (main.go:9)	MOVQ	80(SP), BP
	0x009d 00157 (main.go:9)	ADDQ	$88, SP
	0x00a1 00161 (main.go:9)	RET
	0x00a2 00162 (main.go:9)	NOP
	0x00a2 00162 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x00a7 00167 (main.go:6)	JMP	0

"".SetOneType STEXT nosplit size=8 args=0x8 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (main.go:17)	TEXT	"".SetOneType(SB), NOSPLIT|ABIInternal, $0-8
	0x0000 00000 (main.go:18)	MOVB	$1, (AX)
	0x0003 00003 (main.go:19)	XORL	AX, AX
	0x0005 00005 (main.go:19)	XORL	BX, BX
	0x0007 00007 (main.go:19)	RET

// 不同点
// 1.在one_int8中，定义了临时变量autotmp_8+47(SP)
// 2.方法调用完成后，one_int16取出了oneType+46(SP)的值，而one_int8通过LEAQ重新从内存设置
