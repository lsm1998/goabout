"".main STEXT size=165 args=0x0 locals=0x58 funcid=0x0 align=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $88-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	PCDATA	$0, $-2
	0x0004 00004 (main.go:6)	JLS	154
	0x000a 00010 (main.go:6)	PCDATA	$0, $-1
	0x000a 00010 (main.go:6)	SUBQ	$88, SP
	0x000e 00014 (main.go:6)	MOVQ	BP, 80(SP)
	0x0013 00019 (main.go:6)	LEAQ	80(SP), BP
	0x0018 00024 (main.go:6)	FUNCDATA	$0, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$1, gclocals路3f4a7c9b82bda2ad3032a095a2790ab1(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0018 00024 (main.go:7)	MOVW	$0, "".oneType+30(SP)
	0x001f 00031 (main.go:8)	LEAQ	"".oneType+30(SP), AX
	0x0024 00036 (main.go:8)	PCDATA	$1, $0
	0x0024 00036 (main.go:8)	CALL	"".SetOneType(SB)
	0x0029 00041 (main.go:8)	MOVQ	AX, ""..autotmp_10+40(SP)
	0x002e 00046 (main.go:8)	MOVQ	BX, ""..autotmp_11+32(SP)
	0x0033 00051 (main.go:8)	MOVUPS	X15, ""..autotmp_2+48(SP)
	0x0039 00057 (main.go:8)	MOVUPS	X15, ""..autotmp_2+64(SP)
	0x003f 00063 (main.go:8)	MOVWLZX	"".oneType+30(SP), CX
	0x0044 00068 (main.go:8)	MOVL	CX, AX
	0x0046 00070 (main.go:8)	PCDATA	$1, $1
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
	0x008b 00139 (main.go:8)	PCDATA	$1, $0
	0x008b 00139 (main.go:8)	CALL	fmt.Println(SB)
	0x0090 00144 (main.go:9)	MOVQ	80(SP), BP
	0x0095 00149 (main.go:9)	ADDQ	$88, SP
	0x0099 00153 (main.go:9)	RET
	0x009a 00154 (main.go:9)	NOP
	0x009a 00154 (main.go:6)	PCDATA	$1, $-1
	0x009a 00154 (main.go:6)	PCDATA	$0, $-2
	0x009a 00154 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x009f 00159 (main.go:6)	PCDATA	$0, $-1
	0x009f 00159 (main.go:6)	NOP
	0x00a0 00160 (main.go:6)	JMP	0
	0x0000 49 3b 66 10 0f 86 90 00 00 00 48 83 ec 58 48 89  I;f.......H..XH.
	0x0010 6c 24 50 48 8d 6c 24 50 66 c7 44 24 1e 00 00 48  l$PH.l$Pf.D$...H
	0x0020 8d 44 24 1e e8 00 00 00 00 48 89 44 24 28 48 89  .D$......H.D$(H.
	0x0030 5c 24 20 44 0f 11 7c 24 30 44 0f 11 7c 24 40 0f  \$ D..|$0D..|$@.
	0x0040 b7 4c 24 1e 89 c8 e8 00 00 00 00 48 8d 0d 00 00  .L$........H....
	0x0050 00 00 48 89 4c 24 30 48 89 44 24 38 48 8b 4c 24  ..H.L$0H.D$8H.L$
	0x0060 28 48 85 c9 74 06 48 8b 41 08 eb 03 48 89 c8 48  (H..t.H.A...H..H
	0x0070 89 44 24 40 48 8b 54 24 20 48 89 54 24 48 48 8d  .D$@H.T$ H.T$HH.
	0x0080 44 24 30 bb 02 00 00 00 48 89 d9 e8 00 00 00 00  D$0.....H.......
	0x0090 48 8b 6c 24 50 48 83 c4 58 c3 e8 00 00 00 00 90  H.l$PH..X.......
	0x00a0 e9 5b ff ff ff                                   .[...
	rel 3+0 t=23 type."".OneType+0
	rel 37+4 t=7 "".SetOneType+0
	rel 71+4 t=7 runtime.convT16+0
	rel 78+4 t=14 type."".OneType+0
	rel 140+4 t=7 fmt.Println+0
	rel 155+4 t=7 runtime.morestack_noctxt+0
"".SetOneType STEXT nosplit size=10 args=0x8 locals=0x0 funcid=0x0 align=0x0
	0x0000 00000 (main.go:17)	TEXT	"".SetOneType(SB), NOSPLIT|ABIInternal, $0-8
	0x0000 00000 (main.go:17)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x0000 00000 (main.go:17)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (main.go:17)	FUNCDATA	$5, "".SetOneType.arginfo1(SB)
	0x0000 00000 (main.go:17)	FUNCDATA	$6, "".SetOneType.argliveinfo(SB)
	0x0000 00000 (main.go:17)	PCDATA	$3, $1
	0x0000 00000 (main.go:18)	MOVW	$1, (AX)
	0x0005 00005 (main.go:19)	XORL	AX, AX
	0x0007 00007 (main.go:19)	XORL	BX, BX
	0x0009 00009 (main.go:19)	RET
	0x0000 66 c7 00 01 00 31 c0 31 db c3                    f....1.1..
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
runtime.memequal16路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal16+0
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
	0x0000 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 51 8a 21 f5 0f 02 02 19 00 00 00 00 00 00 00 00  Q.!.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal16路f+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*main.OneType.+0
	rel 44+4 t=5 type.*"".OneType+0
	rel 56+8 t=1 type."".OneType+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.Val.+0
	rel 104+8 t=1 type.int16+0
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
