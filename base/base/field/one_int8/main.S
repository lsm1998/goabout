"".main STEXT size=172 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $88-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	PCDATA	$0, $-2
	0x0004 00004 (main.go:6)	JLS	162
	0x000a 00010 (main.go:6)	PCDATA	$0, $-1
	0x000a 00010 (main.go:6)	SUBQ	$88, SP
	0x000e 00014 (main.go:6)	MOVQ	BP, 80(SP)
	0x0013 00019 (main.go:6)	LEAQ	80(SP), BP
	0x0018 00024 (main.go:6)	FUNCDATA	$0, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$1, gclocals路3f4a7c9b82bda2ad3032a095a2790ab1(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0018 00024 (main.go:7)	MOVB	$0, "".oneType+30(SP)
	0x001d 00029 (main.go:8)	MOVB	$0, ""..autotmp_1+31(SP)
	0x0022 00034 (main.go:8)	LEAQ	"".oneType+30(SP), AX
	0x0027 00039 (main.go:8)	PCDATA	$1, $0
	0x0027 00039 (main.go:8)	CALL	"".SetOneType(SB)
	0x002c 00044 (main.go:8)	MOVQ	AX, ""..autotmp_9+32(SP)
	0x0031 00049 (main.go:8)	MOVQ	BX, ""..autotmp_10+40(SP)
	0x0036 00054 (main.go:8)	MOVUPS	X15, ""..autotmp_3+48(SP)
	0x003c 00060 (main.go:8)	MOVUPS	X15, ""..autotmp_3+64(SP)
	0x0042 00066 (main.go:8)	LEAQ	type."".OneType(SB), AX
	0x0049 00073 (main.go:8)	LEAQ	""..autotmp_1+31(SP), BX
	0x004e 00078 (main.go:8)	PCDATA	$1, $1
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
	0x0093 00147 (main.go:8)	PCDATA	$1, $0
	0x0093 00147 (main.go:8)	CALL	fmt.Println(SB)
	0x0098 00152 (main.go:9)	MOVQ	80(SP), BP
	0x009d 00157 (main.go:9)	ADDQ	$88, SP
	0x00a1 00161 (main.go:9)	RET
	0x00a2 00162 (main.go:9)	NOP
	0x00a2 00162 (main.go:6)	PCDATA	$1, $-1
	0x00a2 00162 (main.go:6)	PCDATA	$0, $-2
	0x00a2 00162 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x00a7 00167 (main.go:6)	PCDATA	$0, $-1
	0x00a7 00167 (main.go:6)	JMP	0
	0x0000 49 3b 66 10 0f 86 98 00 00 00 48 83 ec 58 48 89  I;f.......H..XH.
	0x0010 6c 24 50 48 8d 6c 24 50 c6 44 24 1e 00 c6 44 24  l$PH.l$P.D$...D$
	0x0020 1f 00 48 8d 44 24 1e e8 00 00 00 00 48 89 44 24  ..H.D$......H.D$
	0x0030 20 48 89 5c 24 28 44 0f 11 7c 24 30 44 0f 11 7c   H.\$(D..|$0D..|
	0x0040 24 40 48 8d 05 00 00 00 00 48 8d 5c 24 1f e8 00  $@H......H.\$...
	0x0050 00 00 00 48 8d 0d 00 00 00 00 48 89 4c 24 30 48  ...H......H.L$0H
	0x0060 89 44 24 38 48 8b 4c 24 20 48 85 c9 74 06 48 8b  .D$8H.L$ H..t.H.
	0x0070 41 08 eb 03 48 89 c8 48 89 44 24 40 48 8b 54 24  A...H..H.D$@H.T$
	0x0080 28 48 89 54 24 48 48 8d 44 24 30 bb 02 00 00 00  (H.T$HH.D$0.....
	0x0090 48 89 d9 e8 00 00 00 00 48 8b 6c 24 50 48 83 c4  H.......H.l$PH..
	0x00a0 58 c3 e8 00 00 00 00 e9 54 ff ff ff              X.......T...
	rel 3+0 t=23 type."".OneType+0
	rel 40+4 t=7 "".SetOneType+0
	rel 69+4 t=14 type."".OneType+0
	rel 79+4 t=7 runtime.convTnoptr+0
	rel 86+4 t=14 type."".OneType+0
	rel 148+4 t=7 fmt.Println+0
	rel 163+4 t=7 runtime.morestack_noctxt+0
"".SetOneType STEXT nosplit size=8 args=0x8 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (main.go:17)	TEXT	"".SetOneType(SB), NOSPLIT|ABIInternal, $0-8
	0x0000 00000 (main.go:17)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x0000 00000 (main.go:17)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (main.go:17)	FUNCDATA	$5, "".SetOneType.arginfo1(SB)
	0x0000 00000 (main.go:17)	FUNCDATA	$6, "".SetOneType.argliveinfo(SB)
	0x0000 00000 (main.go:17)	PCDATA	$3, $1
	0x0000 00000 (main.go:18)	MOVB	$1, (AX)
	0x0003 00003 (main.go:19)	XORL	AX, AX
	0x0005 00005 (main.go:19)	XORL	BX, BX
	0x0007 00007 (main.go:19)	RET
	0x0000 c6 00 01 31 c0 31 db c3                          ...1.1..
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
runtime.memequal8路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal8+0
runtime.memequal64路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.OneType. SRODATA dupok size=15
	0x0000 01 0d 2a 6d 61 69 6e 2e 4f 6e 65 54 79 70 65     ..*main.OneType
type.*"".OneType SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb bc bc 02 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.OneType.+0
	rel 48+8 t=1 type."".OneType+0
runtime.gcbits. SRODATA dupok size=0
type..namedata.Val. SRODATA dupok size=5
	0x0000 01 03 56 61 6c                                   ..Val
type."".OneType SRODATA dupok size=120
	0x0000 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 51 8a 21 f5 0f 01 01 19 00 00 00 00 00 00 00 00  Q.!.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal8路f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.OneType.+0
	rel 44+4 t=5 type.*"".OneType+0
	rel 56+8 t=1 type."".OneType+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.Val.+0
	rel 104+8 t=1 type.int8+0
runtime.gcbits.0a SRODATA dupok size=1
	0x0000 0a                                               .
type..importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals路3f4a7c9b82bda2ad3032a095a2790ab1 SRODATA dupok size=10
	0x0000 02 00 00 00 06 00 00 00 00 2b                    .........+
"".main.stkobj SRODATA static size=24
	0x0000 01 00 00 00 00 00 00 00 e0 ff ff ff 20 00 00 00  ............ ...
	0x0010 20 00 00 00 00 00 00 00                           .......
	rel 20+4 t=5 runtime.gcbits.0a+0
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
"".SetOneType.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
"".SetOneType.argliveinfo SRODATA static dupok size=2
	0x0000 00 00                                            ..
