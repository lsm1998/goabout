"".main STEXT size=741 args=0x0 locals=0x140 funcid=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $320-0
	0x0000 00000 (main.go:6)	MOVQ	TLS, CX
	0x0009 00009 (main.go:6)	PCDATA	$0, $-2
	0x0009 00009 (main.go:6)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:6)	PCDATA	$0, $-1
	0x0010 00016 (main.go:6)	LEAQ	-192(SP), AX
	0x0018 00024 (main.go:6)	NOP
	0x0020 00032 (main.go:6)	CMPQ	AX, 16(CX)
	0x0024 00036 (main.go:6)	PCDATA	$0, $-2
	0x0024 00036 (main.go:6)	JLS	727
	0x002a 00042 (main.go:6)	PCDATA	$0, $-1
	0x002a 00042 (main.go:6)	SUBQ	$320, SP
	0x0031 00049 (main.go:6)	MOVQ	BP, 312(SP)
	0x0039 00057 (main.go:6)	LEAQ	312(SP), BP
	0x0041 00065 (main.go:6)	FUNCDATA	$0, gclocals路7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0041 00065 (main.go:6)	FUNCDATA	$1, gclocals路bb283eb1771da6894c418b26ad93fd96(SB)
	0x0041 00065 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0041 00065 (main.go:7)	XORPS	X0, X0
	0x0044 00068 (main.go:7)	MOVUPS	X0, "".oneType+144(SP)
	0x004c 00076 (main.go:8)	LEAQ	"".oneType+144(SP), AX
	0x0054 00084 (main.go:8)	MOVQ	AX, (SP)
	0x0058 00088 (main.go:8)	PCDATA	$1, $1
	0x0058 00088 (main.go:8)	CALL	"".SetOneType(SB)
	0x005d 00093 (main.go:8)	MOVQ	8(SP), AX
	0x0062 00098 (main.go:8)	MOVQ	16(SP), CX
	0x0067 00103 (main.go:8)	MOVQ	AX, ""..autotmp_8+176(SP)
	0x006f 00111 (main.go:8)	MOVQ	CX, ""..autotmp_8+184(SP)
	0x0077 00119 (main.go:8)	MOVQ	"".oneType+144(SP), AX
	0x007f 00127 (main.go:8)	MOVQ	"".oneType+152(SP), CX
	0x0087 00135 (main.go:8)	MOVQ	AX, (SP)
	0x008b 00139 (main.go:8)	MOVQ	CX, 8(SP)
	0x0090 00144 (main.go:8)	PCDATA	$1, $2
	0x0090 00144 (main.go:8)	CALL	runtime.convTstring(SB)
	0x0095 00149 (main.go:8)	MOVQ	16(SP), AX
	0x009a 00154 (main.go:8)	MOVQ	AX, ""..autotmp_11+104(SP)
	0x009f 00159 (main.go:8)	LEAQ	type."".OneType(SB), CX
	0x00a6 00166 (main.go:8)	MOVQ	CX, ""..autotmp_10+240(SP)
	0x00ae 00174 (main.go:8)	MOVQ	AX, ""..autotmp_10+248(SP)
	0x00b6 00182 (main.go:8)	MOVQ	""..autotmp_8+176(SP), AX
	0x00be 00190 (main.go:8)	MOVQ	""..autotmp_8+184(SP), CX
	0x00c6 00198 (main.go:8)	MOVQ	AX, ""..autotmp_13+208(SP)
	0x00ce 00206 (main.go:8)	MOVQ	CX, ""..autotmp_13+216(SP)
	0x00d6 00214 (main.go:8)	MOVQ	AX, ""..autotmp_14+96(SP)
	0x00db 00219 (main.go:8)	CMPQ	""..autotmp_14+96(SP), $0
	0x00e1 00225 (main.go:8)	JNE	232
	0x00e3 00227 (main.go:8)	JMP	722
	0x00e8 00232 (main.go:8)	MOVQ	8(AX), AX
	0x00ec 00236 (main.go:8)	MOVQ	AX, ""..autotmp_14+96(SP)
	0x00f1 00241 (main.go:8)	JMP	243
	0x00f3 00243 (main.go:8)	MOVQ	""..autotmp_14+96(SP), AX
	0x00f8 00248 (main.go:8)	MOVQ	""..autotmp_13+216(SP), CX
	0x0100 00256 (main.go:8)	MOVQ	AX, ""..autotmp_12+224(SP)
	0x0108 00264 (main.go:8)	MOVQ	CX, ""..autotmp_12+232(SP)
	0x0110 00272 (main.go:8)	MOVQ	""..autotmp_10+240(SP), AX
	0x0118 00280 (main.go:8)	MOVQ	""..autotmp_10+248(SP), CX
	0x0120 00288 (main.go:8)	MOVQ	AX, "".~arg0+128(SP)
	0x0128 00296 (main.go:8)	MOVQ	CX, "".~arg0+136(SP)
	0x0130 00304 (main.go:8)	MOVQ	""..autotmp_12+224(SP), AX
	0x0138 00312 (main.go:8)	MOVQ	""..autotmp_12+232(SP), CX
	0x0140 00320 (main.go:8)	MOVQ	AX, "".~arg1+112(SP)
	0x0145 00325 (main.go:8)	MOVQ	CX, "".~arg1+120(SP)
	0x014a 00330 (main.go:8)	XORPS	X0, X0
	0x014d 00333 (main.go:8)	MOVUPS	X0, ""..autotmp_17+280(SP)
	0x0155 00341 (main.go:8)	MOVUPS	X0, ""..autotmp_17+296(SP)
	0x015d 00349 (main.go:8)	LEAQ	""..autotmp_17+280(SP), AX
	0x0165 00357 (main.go:8)	MOVQ	AX, ""..autotmp_15+88(SP)
	0x016a 00362 (main.go:8)	TESTB	AL, (AX)
	0x016c 00364 (main.go:8)	MOVQ	"".~arg0+128(SP), CX
	0x0174 00372 (main.go:8)	MOVQ	"".~arg0+136(SP), DX
	0x017c 00380 (main.go:8)	MOVQ	CX, ""..autotmp_17+280(SP)
	0x0184 00388 (main.go:8)	MOVQ	DX, ""..autotmp_17+288(SP)
	0x018c 00396 (main.go:8)	TESTB	AL, (AX)
	0x018e 00398 (main.go:8)	MOVQ	"".~arg1+112(SP), AX
	0x0193 00403 (main.go:8)	MOVQ	"".~arg1+120(SP), CX
	0x0198 00408 (main.go:8)	MOVQ	AX, ""..autotmp_17+296(SP)
	0x01a0 00416 (main.go:8)	MOVQ	CX, ""..autotmp_17+304(SP)
	0x01a8 00424 (main.go:8)	MOVQ	""..autotmp_15+88(SP), AX
	0x01ad 00429 (main.go:8)	TESTB	AL, (AX)
	0x01af 00431 (main.go:8)	JMP	433
	0x01b1 00433 (main.go:8)	MOVQ	AX, fmt.a+256(SP)
	0x01b9 00441 (main.go:8)	MOVQ	$2, fmt.a+264(SP)
	0x01c5 00453 (main.go:8)	MOVQ	$2, fmt.a+272(SP)
	0x01d1 00465 (main.go:8)	MOVQ	$0, fmt.n+64(SP)
	0x01da 00474 (main.go:8)	XORPS	X0, X0
	0x01dd 00477 (main.go:8)	MOVUPS	X0, fmt.err+160(SP)
	0x01e5 00485 (<unknown line number>)	NOP
	0x01e5 00485 (main.go:8)	MOVQ	$0, fmt..autotmp_3+80(SP)
	0x01ee 00494 (main.go:8)	XORPS	X0, X0
	0x01f1 00497 (main.go:8)	MOVUPS	X0, fmt..autotmp_4+192(SP)
	0x01f9 00505 ($GOROOT\src\fmt\print.go:274)	XORPS	X0, X0
	0x01fc 00508 ($GOROOT\src\fmt\print.go:274)	MOVUPS	X0, ""..autotmp_8+176(SP)
	0x0204 00516 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+256(SP), AX
	0x020c 00524 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+264(SP), CX
	0x0214 00532 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+272(SP), DX
	0x021c 00540 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), BX
	0x0223 00547 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), SI
	0x022a 00554 ($GOROOT\src\fmt\print.go:274)	MOVQ	SI, (SP)
	0x022e 00558 ($GOROOT\src\fmt\print.go:274)	MOVQ	BX, 8(SP)
	0x0233 00563 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 16(SP)
	0x0238 00568 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, 24(SP)
	0x023d 00573 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, 32(SP)
	0x0242 00578 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $0
	0x0242 00578 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x0247 00583 ($GOROOT\src\fmt\print.go:274)	MOVQ	40(SP), AX
	0x024c 00588 ($GOROOT\src\fmt\print.go:274)	MOVQ	48(SP), CX
	0x0251 00593 ($GOROOT\src\fmt\print.go:274)	MOVQ	56(SP), DX
	0x0256 00598 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, ""..autotmp_9+72(SP)
	0x025b 00603 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, ""..autotmp_8+176(SP)
	0x0263 00611 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, ""..autotmp_8+184(SP)
	0x026b 00619 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_9+72(SP), AX
	0x0270 00624 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, fmt..autotmp_3+80(SP)
	0x0275 00629 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_8+176(SP), AX
	0x027d 00637 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_8+184(SP), CX
	0x0285 00645 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, fmt..autotmp_4+192(SP)
	0x028d 00653 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, fmt..autotmp_4+200(SP)
	0x0295 00661 (main.go:8)	MOVQ	fmt..autotmp_3+80(SP), AX
	0x029a 00666 (main.go:8)	MOVQ	AX, fmt.n+64(SP)
	0x029f 00671 (main.go:8)	MOVQ	fmt..autotmp_4+192(SP), AX
	0x02a7 00679 (main.go:8)	MOVQ	fmt..autotmp_4+200(SP), CX
	0x02af 00687 (main.go:8)	MOVQ	AX, fmt.err+160(SP)
	0x02b7 00695 (main.go:8)	MOVQ	CX, fmt.err+168(SP)
	0x02bf 00703 (main.go:8)	NOP
	0x02c0 00704 (main.go:8)	JMP	706
	0x02c2 00706 (main.go:8)	PCDATA	$1, $-1
	0x02c2 00706 (main.go:8)	MOVQ	312(SP), BP
	0x02ca 00714 (main.go:8)	ADDQ	$320, SP
	0x02d1 00721 (main.go:8)	RET
	0x02d2 00722 (main.go:8)	JMP	243
	0x02d7 00727 (main.go:8)	NOP
	0x02d7 00727 (main.go:6)	PCDATA	$1, $-1
	0x02d7 00727 (main.go:6)	PCDATA	$0, $-2
	0x02d7 00727 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x02dc 00732 (main.go:6)	PCDATA	$0, $-1
	0x02dc 00732 (main.go:6)	NOP
	0x02e0 00736 (main.go:6)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8d 84 24 40 ff ff ff 0f 1f 84 00 00 00 00 00  H..$@...........
	0x0020 48 3b 41 10 0f 86 ad 02 00 00 48 81 ec 40 01 00  H;A.......H..@..
	0x0030 00 48 89 ac 24 38 01 00 00 48 8d ac 24 38 01 00  .H..$8...H..$8..
	0x0040 00 0f 57 c0 0f 11 84 24 90 00 00 00 48 8d 84 24  ..W....$....H..$
	0x0050 90 00 00 00 48 89 04 24 e8 00 00 00 00 48 8b 44  ....H..$.....H.D
	0x0060 24 08 48 8b 4c 24 10 48 89 84 24 b0 00 00 00 48  $.H.L$.H..$....H
	0x0070 89 8c 24 b8 00 00 00 48 8b 84 24 90 00 00 00 48  ..$....H..$....H
	0x0080 8b 8c 24 98 00 00 00 48 89 04 24 48 89 4c 24 08  ..$....H..$H.L$.
	0x0090 e8 00 00 00 00 48 8b 44 24 10 48 89 44 24 68 48  .....H.D$.H.D$hH
	0x00a0 8d 0d 00 00 00 00 48 89 8c 24 f0 00 00 00 48 89  ......H..$....H.
	0x00b0 84 24 f8 00 00 00 48 8b 84 24 b0 00 00 00 48 8b  .$....H..$....H.
	0x00c0 8c 24 b8 00 00 00 48 89 84 24 d0 00 00 00 48 89  .$....H..$....H.
	0x00d0 8c 24 d8 00 00 00 48 89 44 24 60 48 83 7c 24 60  .$....H.D$`H.|$`
	0x00e0 00 75 05 e9 ea 01 00 00 48 8b 40 08 48 89 44 24  .u......H.@.H.D$
	0x00f0 60 eb 00 48 8b 44 24 60 48 8b 8c 24 d8 00 00 00  `..H.D$`H..$....
	0x0100 48 89 84 24 e0 00 00 00 48 89 8c 24 e8 00 00 00  H..$....H..$....
	0x0110 48 8b 84 24 f0 00 00 00 48 8b 8c 24 f8 00 00 00  H..$....H..$....
	0x0120 48 89 84 24 80 00 00 00 48 89 8c 24 88 00 00 00  H..$....H..$....
	0x0130 48 8b 84 24 e0 00 00 00 48 8b 8c 24 e8 00 00 00  H..$....H..$....
	0x0140 48 89 44 24 70 48 89 4c 24 78 0f 57 c0 0f 11 84  H.D$pH.L$x.W....
	0x0150 24 18 01 00 00 0f 11 84 24 28 01 00 00 48 8d 84  $.......$(...H..
	0x0160 24 18 01 00 00 48 89 44 24 58 84 00 48 8b 8c 24  $....H.D$X..H..$
	0x0170 80 00 00 00 48 8b 94 24 88 00 00 00 48 89 8c 24  ....H..$....H..$
	0x0180 18 01 00 00 48 89 94 24 20 01 00 00 84 00 48 8b  ....H..$ .....H.
	0x0190 44 24 70 48 8b 4c 24 78 48 89 84 24 28 01 00 00  D$pH.L$xH..$(...
	0x01a0 48 89 8c 24 30 01 00 00 48 8b 44 24 58 84 00 eb  H..$0...H.D$X...
	0x01b0 00 48 89 84 24 00 01 00 00 48 c7 84 24 08 01 00  .H..$....H..$...
	0x01c0 00 02 00 00 00 48 c7 84 24 10 01 00 00 02 00 00  .....H..$.......
	0x01d0 00 48 c7 44 24 40 00 00 00 00 0f 57 c0 0f 11 84  .H.D$@.....W....
	0x01e0 24 a0 00 00 00 48 c7 44 24 50 00 00 00 00 0f 57  $....H.D$P.....W
	0x01f0 c0 0f 11 84 24 c0 00 00 00 0f 57 c0 0f 11 84 24  ....$.....W....$
	0x0200 b0 00 00 00 48 8b 84 24 00 01 00 00 48 8b 8c 24  ....H..$....H..$
	0x0210 08 01 00 00 48 8b 94 24 10 01 00 00 48 8b 1d 00  ....H..$....H...
	0x0220 00 00 00 48 8d 35 00 00 00 00 48 89 34 24 48 89  ...H.5....H.4$H.
	0x0230 5c 24 08 48 89 44 24 10 48 89 4c 24 18 48 89 54  \$.H.D$.H.L$.H.T
	0x0240 24 20 e8 00 00 00 00 48 8b 44 24 28 48 8b 4c 24  $ .....H.D$(H.L$
	0x0250 30 48 8b 54 24 38 48 89 44 24 48 48 89 8c 24 b0  0H.T$8H.D$HH..$.
	0x0260 00 00 00 48 89 94 24 b8 00 00 00 48 8b 44 24 48  ...H..$....H.D$H
	0x0270 48 89 44 24 50 48 8b 84 24 b0 00 00 00 48 8b 8c  H.D$PH..$....H..
	0x0280 24 b8 00 00 00 48 89 84 24 c0 00 00 00 48 89 8c  $....H..$....H..
	0x0290 24 c8 00 00 00 48 8b 44 24 50 48 89 44 24 40 48  $....H.D$PH.D$@H
	0x02a0 8b 84 24 c0 00 00 00 48 8b 8c 24 c8 00 00 00 48  ..$....H..$....H
	0x02b0 89 84 24 a0 00 00 00 48 89 8c 24 a8 00 00 00 90  ..$....H..$.....
	0x02c0 eb 00 48 8b ac 24 38 01 00 00 48 81 c4 40 01 00  ..H..$8...H..@..
	0x02d0 00 c3 e9 1c fe ff ff e8 00 00 00 00 0f 1f 40 00  ..............@.
	0x02e0 e9 1b fd ff ff                                   .....
	rel 3+0 t=25 type."".OneType+0
	rel 3+0 t=25 type.*os.File+0
	rel 12+4 t=17 TLS+0
	rel 89+4 t=8 "".SetOneType+0
	rel 145+4 t=8 runtime.convTstring+0
	rel 162+4 t=16 type."".OneType+0
	rel 543+4 t=16 os.Stdout+0
	rel 550+4 t=16 go.itab.*os.File,io.Writer+0
	rel 579+4 t=8 fmt.Fprintln+0
	rel 728+4 t=8 runtime.morestack_noctxt+0
"".SetOneType STEXT size=118 args=0x18 locals=0x8 funcid=0x0
	0x0000 00000 (main.go:18)	TEXT	"".SetOneType(SB), ABIInternal, $8-24
	0x0000 00000 (main.go:18)	MOVQ	TLS, CX
	0x0009 00009 (main.go:18)	PCDATA	$0, $-2
	0x0009 00009 (main.go:18)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:18)	PCDATA	$0, $-1
	0x0010 00016 (main.go:18)	CMPQ	SP, 16(CX)
	0x0014 00020 (main.go:18)	PCDATA	$0, $-2
	0x0014 00020 (main.go:18)	JLS	111
	0x0016 00022 (main.go:18)	PCDATA	$0, $-1
	0x0016 00022 (main.go:18)	SUBQ	$8, SP
	0x001a 00026 (main.go:18)	MOVQ	BP, (SP)
	0x001e 00030 (main.go:18)	LEAQ	(SP), BP
	0x0022 00034 (main.go:18)	FUNCDATA	$0, gclocals路e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0022 00034 (main.go:18)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0022 00034 (main.go:18)	XORPS	X0, X0
	0x0025 00037 (main.go:18)	MOVUPS	X0, "".~r1+24(SP)
	0x002a 00042 (main.go:19)	MOVQ	"".oneType+16(SP), DI
	0x002f 00047 (main.go:19)	TESTB	AL, (DI)
	0x0031 00049 (main.go:19)	MOVQ	$5, 8(DI)
	0x0039 00057 (main.go:19)	PCDATA	$0, $-2
	0x0039 00057 (main.go:19)	CMPL	runtime.writeBarrier(SB), $0
	0x0040 00064 (main.go:19)	JEQ	68
	0x0042 00066 (main.go:19)	JMP	97
	0x0044 00068 (main.go:19)	LEAQ	go.string."hello"(SB), AX
	0x004b 00075 (main.go:19)	MOVQ	AX, (DI)
	0x004e 00078 (main.go:19)	JMP	80
	0x0050 00080 (main.go:20)	PCDATA	$0, $-1
	0x0050 00080 (main.go:20)	XORPS	X0, X0
	0x0053 00083 (main.go:20)	MOVUPS	X0, "".~r1+24(SP)
	0x0058 00088 (main.go:20)	MOVQ	(SP), BP
	0x005c 00092 (main.go:20)	ADDQ	$8, SP
	0x0060 00096 (main.go:20)	RET
	0x0061 00097 (main.go:19)	PCDATA	$0, $-2
	0x0061 00097 (main.go:19)	LEAQ	go.string."hello"(SB), AX
	0x0068 00104 (main.go:19)	CALL	runtime.gcWriteBarrier(SB)
	0x006d 00109 (main.go:19)	JMP	80
	0x006f 00111 (main.go:19)	NOP
	0x006f 00111 (main.go:18)	PCDATA	$1, $-1
	0x006f 00111 (main.go:18)	PCDATA	$0, $-2
	0x006f 00111 (main.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x0074 00116 (main.go:18)	PCDATA	$0, $-1
	0x0074 00116 (main.go:18)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 59 48 83 ec 08 48 89 2c 24 48 8d  H;a.vYH...H.,$H.
	0x0020 2c 24 0f 57 c0 0f 11 44 24 18 48 8b 7c 24 10 84  ,$.W...D$.H.|$..
	0x0030 07 48 c7 47 08 05 00 00 00 83 3d 00 00 00 00 00  .H.G......=.....
	0x0040 74 02 eb 1d 48 8d 05 00 00 00 00 48 89 07 eb 00  t...H......H....
	0x0050 0f 57 c0 0f 11 44 24 18 48 8b 2c 24 48 83 c4 08  .W...D$.H.,$H...
	0x0060 c3 48 8d 05 00 00 00 00 e8 00 00 00 00 eb e1 e8  .H..............
	0x0070 00 00 00 00 eb 8a                                ......
	rel 12+4 t=17 TLS+0
	rel 59+4 t=16 runtime.writeBarrier+-1
	rel 71+4 t=16 go.string."hello"+0
	rel 100+4 t=16 go.string."hello"+0
	rel 105+4 t=8 runtime.gcWriteBarrier+0
	rel 112+4 t=8 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok nosplit size=28 args=0x18 locals=0x0 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals路e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	XORPS	X0, X0
	0x0003 00003 (<autogenerated>:1)	MOVUPS	X0, "".~r0+16(SP)
	0x0008 00008 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x000d 00013 (<autogenerated>:1)	TESTB	AL, (AX)
	0x000f 00015 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0012 00018 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x0017 00023 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 0f 57 c0 0f 11 44 24 10 48 8b 44 24 08 84 00 48  .W...D$.H.D$...H
	0x0010 8b 00 48 89 44 24 08 e9 00 00 00 00              ..H.D$......
	rel 24+4 t=8 os.(*file).close+0
os.(*File).isdir STEXT dupok nosplit size=25 args=0x10 locals=0x0 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).isdir(SB), DUPOK|NOSPLIT|ABIInternal, $0-16
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	MOVB	$0, "".~r0+16(SP)
	0x0005 00005 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x000a 00010 (<autogenerated>:1)	TESTB	AL, (AX)
	0x000c 00012 (<autogenerated>:1)	MOVQ	(AX), AX
	0x000f 00015 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x0014 00020 (<autogenerated>:1)	JMP	os.(*file).isdir(SB)
	0x0000 c6 44 24 10 00 48 8b 44 24 08 84 00 48 8b 00 48  .D$..H.D$...H..H
	0x0010 89 44 24 08 e9 00 00 00 00                       .D$......
	rel 21+4 t=8 os.(*file).isdir+0
type..eq.[2]interface {} STEXT dupok size=237 args=0x18 locals=0x50 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq.[2]interface {}(SB), DUPOK|ABIInternal, $80-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	TLS, CX
	0x0009 00009 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0009 00009 (<autogenerated>:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0010 00016 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0014 00020 (<autogenerated>:1)	JLS	227
	0x001a 00026 (<autogenerated>:1)	PCDATA	$0, $-1
	0x001a 00026 (<autogenerated>:1)	SUBQ	$80, SP
	0x001e 00030 (<autogenerated>:1)	MOVQ	BP, 72(SP)
	0x0023 00035 (<autogenerated>:1)	LEAQ	72(SP), BP
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$0, gclocals路dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$1, gclocals路955e25ebd21d9d330257196a49a276e5(SB)
	0x0028 00040 (<autogenerated>:1)	MOVB	$0, "".r+104(SP)
	0x002d 00045 (<autogenerated>:1)	MOVQ	$0, ""..autotmp_3+32(SP)
	0x0036 00054 (<autogenerated>:1)	JMP	56
	0x0038 00056 (<autogenerated>:1)	CMPQ	""..autotmp_3+32(SP), $2
	0x003e 00062 (<autogenerated>:1)	NOP
	0x0040 00064 (<autogenerated>:1)	JLT	71
	0x0042 00066 (<autogenerated>:1)	JMP	220
	0x0047 00071 (<autogenerated>:1)	MOVQ	""..autotmp_3+32(SP), AX
	0x004c 00076 (<autogenerated>:1)	SHLQ	$4, AX
	0x0050 00080 (<autogenerated>:1)	ADDQ	"".q+96(SP), AX
	0x0055 00085 (<autogenerated>:1)	MOVQ	(AX), CX
	0x0058 00088 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x005c 00092 (<autogenerated>:1)	MOVQ	CX, ""..autotmp_4+56(SP)
	0x0061 00097 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+64(SP)
	0x0066 00102 (<autogenerated>:1)	MOVQ	""..autotmp_3+32(SP), AX
	0x006b 00107 (<autogenerated>:1)	SHLQ	$4, AX
	0x006f 00111 (<autogenerated>:1)	ADDQ	"".p+88(SP), AX
	0x0074 00116 (<autogenerated>:1)	MOVQ	(AX), CX
	0x0077 00119 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x007b 00123 (<autogenerated>:1)	MOVQ	CX, ""..autotmp_5+40(SP)
	0x0080 00128 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_5+48(SP)
	0x0085 00133 (<autogenerated>:1)	CMPQ	""..autotmp_4+56(SP), CX
	0x008a 00138 (<autogenerated>:1)	JEQ	142
	0x008c 00140 (<autogenerated>:1)	JMP	218
	0x008e 00142 (<autogenerated>:1)	MOVQ	""..autotmp_4+64(SP), DX
	0x0093 00147 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x0097 00151 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x009c 00156 (<autogenerated>:1)	MOVQ	DX, 16(SP)
	0x00a1 00161 (<autogenerated>:1)	PCDATA	$1, $0
	0x00a1 00161 (<autogenerated>:1)	CALL	runtime.efaceeq(SB)
	0x00a6 00166 (<autogenerated>:1)	CMPB	24(SP), $0
	0x00ab 00171 (<autogenerated>:1)	JNE	175
	0x00ad 00173 (<autogenerated>:1)	JMP	197
	0x00af 00175 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00af 00175 (<autogenerated>:1)	JMP	177
	0x00b1 00177 (<autogenerated>:1)	MOVQ	""..autotmp_3+32(SP), AX
	0x00b6 00182 (<autogenerated>:1)	INCQ	AX
	0x00b9 00185 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_3+32(SP)
	0x00be 00190 (<autogenerated>:1)	NOP
	0x00c0 00192 (<autogenerated>:1)	JMP	56
	0x00c5 00197 (<autogenerated>:1)	JMP	199
	0x00c7 00199 (<autogenerated>:1)	JMP	201
	0x00c9 00201 (<autogenerated>:1)	MOVB	$0, "".r+104(SP)
	0x00ce 00206 (<autogenerated>:1)	JMP	208
	0x00d0 00208 (<autogenerated>:1)	MOVQ	72(SP), BP
	0x00d5 00213 (<autogenerated>:1)	ADDQ	$80, SP
	0x00d9 00217 (<autogenerated>:1)	RET
	0x00da 00218 (<autogenerated>:1)	JMP	199
	0x00dc 00220 (<autogenerated>:1)	MOVB	$1, "".r+104(SP)
	0x00e1 00225 (<autogenerated>:1)	JMP	208
	0x00e3 00227 (<autogenerated>:1)	NOP
	0x00e3 00227 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00e3 00227 (<autogenerated>:1)	PCDATA	$0, $-2
	0x00e3 00227 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00e8 00232 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00e8 00232 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 0f 86 c9 00 00 00 48 83 ec 50 48 89  H;a.......H..PH.
	0x0020 6c 24 48 48 8d 6c 24 48 c6 44 24 68 00 48 c7 44  l$HH.l$H.D$h.H.D
	0x0030 24 20 00 00 00 00 eb 00 48 83 7c 24 20 02 66 90  $ ......H.|$ .f.
	0x0040 7c 05 e9 95 00 00 00 48 8b 44 24 20 48 c1 e0 04  |......H.D$ H...
	0x0050 48 03 44 24 60 48 8b 08 48 8b 40 08 48 89 4c 24  H.D$`H..H.@.H.L$
	0x0060 38 48 89 44 24 40 48 8b 44 24 20 48 c1 e0 04 48  8H.D$@H.D$ H...H
	0x0070 03 44 24 58 48 8b 08 48 8b 40 08 48 89 4c 24 28  .D$XH..H.@.H.L$(
	0x0080 48 89 44 24 30 48 39 4c 24 38 74 02 eb 4c 48 8b  H.D$0H9L$8t..LH.
	0x0090 54 24 40 48 89 0c 24 48 89 44 24 08 48 89 54 24  T$@H..$H.D$.H.T$
	0x00a0 10 e8 00 00 00 00 80 7c 24 18 00 75 02 eb 16 eb  .......|$..u....
	0x00b0 00 48 8b 44 24 20 48 ff c0 48 89 44 24 20 66 90  .H.D$ H..H.D$ f.
	0x00c0 e9 73 ff ff ff eb 00 eb 00 c6 44 24 68 00 eb 00  .s........D$h...
	0x00d0 48 8b 6c 24 48 48 83 c4 50 c3 eb eb c6 44 24 68  H.l$HH..P....D$h
	0x00e0 01 eb ed e8 00 00 00 00 e9 13 ff ff ff           .............
	rel 12+4 t=17 TLS+0
	rel 162+4 t=8 runtime.efaceeq+0
	rel 228+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=24 type.[]interface {}+0
	rel 0+0 t=24 type.error+0
	rel 0+0 t=24 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
runtime.strequal路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.strequal+0
runtime.memequal64路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.OneType. SRODATA dupok size=16
	0x0000 01 00 0d 2a 6d 61 69 6e 2e 4f 6e 65 54 79 70 65  ...*main.OneType
type.*"".OneType SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb bc bc 02 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.OneType.+0
	rel 48+8 t=1 type."".OneType+0
type..namedata.Name. SRODATA dupok size=7
	0x0000 01 00 04 4e 61 6d 65                             ...Name
type."".OneType SRODATA size=120
	0x0000 10 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 51 8a 21 f5 07 08 08 19 00 00 00 00 00 00 00 00  Q.!.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  ........(.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.strequal路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.OneType.+0
	rel 44+4 t=5 type.*"".OneType+0
	rel 56+8 t=1 type."".OneType+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.Name.+0
	rel 104+8 t=1 type.string+0
runtime.nilinterequal路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 08 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal路f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..eqfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.[2]interface {}+0
type..namedata.*[2]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 32 5d 69 6e 74 65 72 66 61 63 65  ...*[2]interface
	0x0010 20 7b 7d                                          {}
type.*[2]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 be 73 2d 71 08 08 08 36 00 00 00 00 00 00 00 00  .s-q...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]interface {}-+0
	rel 48+8 t=1 type.[2]interface {}+0
runtime.gcbits.0a SRODATA dupok size=1
	0x0000 0a                                               .
type.[2]interface {} SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 2c 59 a4 f1 02 08 08 11 00 00 00 00 00 00 00 00  ,Y..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..eqfunc.[2]interface {}+0
	rel 32+8 t=1 runtime.gcbits.0a+0
	rel 40+4 t=5 type..namedata.*[2]interface {}-+0
	rel 44+4 t=6 type.*[2]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=1 os.(*File).Write+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
gclocals路7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals路bb283eb1771da6894c418b26ad93fd96 SRODATA dupok size=20
	0x0000 03 00 00 00 1c 00 00 00 00 00 00 00 80 00 00 00  ................
	0x0010 00 10 00 00                                      ....
"".main.stkobj SRODATA static size=40
	0x0000 02 00 00 00 00 00 00 00 58 ff ff ff ff ff ff ff  ........X.......
	0x0010 00 00 00 00 00 00 00 00 e0 ff ff ff ff ff ff ff  ................
	0x0020 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type."".OneType+0
	rel 32+8 t=1 type.[2]interface {}+0
gclocals路e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals路dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals路955e25ebd21d9d330257196a49a276e5 SRODATA dupok size=10
	0x0000 02 00 00 00 04 00 00 00 00 00                    ..........
