"".main STEXT size=778 args=0x0 locals=0x158 funcid=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $344-0
	0x0000 00000 (main.go:6)	MOVQ	TLS, CX
	0x0009 00009 (main.go:6)	PCDATA	$0, $-2
	0x0009 00009 (main.go:6)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:6)	PCDATA	$0, $-1
	0x0010 00016 (main.go:6)	LEAQ	-216(SP), AX
	0x0018 00024 (main.go:6)	NOP
	0x0020 00032 (main.go:6)	CMPQ	AX, 16(CX)
	0x0024 00036 (main.go:6)	PCDATA	$0, $-2
	0x0024 00036 (main.go:6)	JLS	768
	0x002a 00042 (main.go:6)	PCDATA	$0, $-1
	0x002a 00042 (main.go:6)	SUBQ	$344, SP
	0x0031 00049 (main.go:6)	MOVQ	BP, 336(SP)
	0x0039 00057 (main.go:6)	LEAQ	336(SP), BP
	0x0041 00065 (main.go:6)	FUNCDATA	$0, gclocals路7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0041 00065 (main.go:6)	FUNCDATA	$1, gclocals路609bba0db57fe488d619001b5f8b9e37(SB)
	0x0041 00065 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0041 00065 (main.go:7)	XORPS	X0, X0
	0x0044 00068 (main.go:7)	MOVUPS	X0, "".muteType+232(SP)
	0x004c 00076 (main.go:7)	MOVL	$0, "".muteType+248(SP)
	0x0057 00087 (main.go:8)	MOVQ	"".muteType+232(SP), AX
	0x005f 00095 (main.go:8)	MOVQ	"".muteType+240(SP), CX
	0x0067 00103 (main.go:8)	MOVQ	AX, ""..autotmp_8+280(SP)
	0x006f 00111 (main.go:8)	MOVQ	CX, ""..autotmp_8+288(SP)
	0x0077 00119 (main.go:8)	MOVL	$0, ""..autotmp_8+296(SP)
	0x0082 00130 (main.go:8)	LEAQ	"".muteType+232(SP), AX
	0x008a 00138 (main.go:8)	MOVQ	AX, (SP)
	0x008e 00142 (main.go:8)	PCDATA	$1, $1
	0x008e 00142 (main.go:8)	CALL	"".SetMuteType(SB)
	0x0093 00147 (main.go:8)	MOVQ	8(SP), AX
	0x0098 00152 (main.go:8)	MOVQ	16(SP), CX
	0x009d 00157 (main.go:8)	MOVQ	AX, ""..autotmp_9+152(SP)
	0x00a5 00165 (main.go:8)	MOVQ	CX, ""..autotmp_9+160(SP)
	0x00ad 00173 (main.go:8)	LEAQ	type."".MuteType(SB), AX
	0x00b4 00180 (main.go:8)	MOVQ	AX, (SP)
	0x00b8 00184 (main.go:8)	LEAQ	""..autotmp_8+280(SP), AX
	0x00c0 00192 (main.go:8)	MOVQ	AX, 8(SP)
	0x00c5 00197 (main.go:8)	PCDATA	$1, $2
	0x00c5 00197 (main.go:8)	CALL	runtime.convT2E(SB)
	0x00ca 00202 (main.go:8)	MOVQ	16(SP), AX
	0x00cf 00207 (main.go:8)	MOVQ	24(SP), CX
	0x00d4 00212 (main.go:8)	MOVQ	AX, ""..autotmp_11+216(SP)
	0x00dc 00220 (main.go:8)	MOVQ	CX, ""..autotmp_11+224(SP)
	0x00e4 00228 (main.go:8)	MOVQ	""..autotmp_9+160(SP), AX
	0x00ec 00236 (main.go:8)	MOVQ	""..autotmp_9+152(SP), CX
	0x00f4 00244 (main.go:8)	MOVQ	CX, ""..autotmp_13+184(SP)
	0x00fc 00252 (main.go:8)	MOVQ	AX, ""..autotmp_13+192(SP)
	0x0104 00260 (main.go:8)	MOVQ	CX, ""..autotmp_14+96(SP)
	0x0109 00265 (main.go:8)	CMPQ	""..autotmp_14+96(SP), $0
	0x010f 00271 (main.go:8)	JNE	278
	0x0111 00273 (main.go:8)	JMP	762
	0x0116 00278 (main.go:8)	MOVQ	8(CX), AX
	0x011a 00282 (main.go:8)	MOVQ	AX, ""..autotmp_14+96(SP)
	0x011f 00287 (main.go:8)	NOP
	0x0120 00288 (main.go:8)	JMP	290
	0x0122 00290 (main.go:8)	MOVQ	""..autotmp_14+96(SP), AX
	0x0127 00295 (main.go:8)	MOVQ	""..autotmp_13+192(SP), CX
	0x012f 00303 (main.go:8)	MOVQ	AX, ""..autotmp_12+200(SP)
	0x0137 00311 (main.go:8)	MOVQ	CX, ""..autotmp_12+208(SP)
	0x013f 00319 (main.go:8)	MOVQ	""..autotmp_11+216(SP), AX
	0x0147 00327 (main.go:8)	MOVQ	""..autotmp_11+224(SP), CX
	0x014f 00335 (main.go:8)	MOVQ	AX, "".~arg0+120(SP)
	0x0154 00340 (main.go:8)	MOVQ	CX, "".~arg0+128(SP)
	0x015c 00348 (main.go:8)	MOVQ	""..autotmp_12+200(SP), AX
	0x0164 00356 (main.go:8)	MOVQ	""..autotmp_12+208(SP), CX
	0x016c 00364 (main.go:8)	MOVQ	AX, "".~arg1+104(SP)
	0x0171 00369 (main.go:8)	MOVQ	CX, "".~arg1+112(SP)
	0x0176 00374 (main.go:8)	XORPS	X0, X0
	0x0179 00377 (main.go:8)	MOVUPS	X0, ""..autotmp_17+304(SP)
	0x0181 00385 (main.go:8)	MOVUPS	X0, ""..autotmp_17+320(SP)
	0x0189 00393 (main.go:8)	LEAQ	""..autotmp_17+304(SP), AX
	0x0191 00401 (main.go:8)	MOVQ	AX, ""..autotmp_15+88(SP)
	0x0196 00406 (main.go:8)	TESTB	AL, (AX)
	0x0198 00408 (main.go:8)	MOVQ	"".~arg0+120(SP), CX
	0x019d 00413 (main.go:8)	MOVQ	"".~arg0+128(SP), DX
	0x01a5 00421 (main.go:8)	MOVQ	CX, ""..autotmp_17+304(SP)
	0x01ad 00429 (main.go:8)	MOVQ	DX, ""..autotmp_17+312(SP)
	0x01b5 00437 (main.go:8)	TESTB	AL, (AX)
	0x01b7 00439 (main.go:8)	MOVQ	"".~arg1+104(SP), AX
	0x01bc 00444 (main.go:8)	MOVQ	"".~arg1+112(SP), CX
	0x01c1 00449 (main.go:8)	MOVQ	AX, ""..autotmp_17+320(SP)
	0x01c9 00457 (main.go:8)	MOVQ	CX, ""..autotmp_17+328(SP)
	0x01d1 00465 (main.go:8)	MOVQ	""..autotmp_15+88(SP), AX
	0x01d6 00470 (main.go:8)	TESTB	AL, (AX)
	0x01d8 00472 (main.go:8)	JMP	474
	0x01da 00474 (main.go:8)	MOVQ	AX, fmt.a+256(SP)
	0x01e2 00482 (main.go:8)	MOVQ	$2, fmt.a+264(SP)
	0x01ee 00494 (main.go:8)	MOVQ	$2, fmt.a+272(SP)
	0x01fa 00506 (main.go:8)	MOVQ	$0, fmt.n+64(SP)
	0x0203 00515 (main.go:8)	XORPS	X0, X0
	0x0206 00518 (main.go:8)	MOVUPS	X0, fmt.err+136(SP)
	0x020e 00526 (<unknown line number>)	NOP
	0x020e 00526 (main.go:8)	MOVQ	$0, fmt..autotmp_3+72(SP)
	0x0217 00535 (main.go:8)	XORPS	X0, X0
	0x021a 00538 (main.go:8)	MOVUPS	X0, fmt..autotmp_4+168(SP)
	0x0222 00546 ($GOROOT\src\fmt\print.go:274)	XORPS	X0, X0
	0x0225 00549 ($GOROOT\src\fmt\print.go:274)	MOVUPS	X0, ""..autotmp_9+152(SP)
	0x022d 00557 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+256(SP), AX
	0x0235 00565 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+264(SP), CX
	0x023d 00573 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+272(SP), DX
	0x0245 00581 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), BX
	0x024c 00588 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), SI
	0x0253 00595 ($GOROOT\src\fmt\print.go:274)	MOVQ	SI, (SP)
	0x0257 00599 ($GOROOT\src\fmt\print.go:274)	MOVQ	BX, 8(SP)
	0x025c 00604 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 16(SP)
	0x0261 00609 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, 24(SP)
	0x0266 00614 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, 32(SP)
	0x026b 00619 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $0
	0x026b 00619 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x0270 00624 ($GOROOT\src\fmt\print.go:274)	MOVQ	40(SP), AX
	0x0275 00629 ($GOROOT\src\fmt\print.go:274)	MOVQ	48(SP), CX
	0x027a 00634 ($GOROOT\src\fmt\print.go:274)	MOVQ	56(SP), DX
	0x027f 00639 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, ""..autotmp_10+80(SP)
	0x0284 00644 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, ""..autotmp_9+152(SP)
	0x028c 00652 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, ""..autotmp_9+160(SP)
	0x0294 00660 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_10+80(SP), AX
	0x0299 00665 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, fmt..autotmp_3+72(SP)
	0x029e 00670 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_9+152(SP), AX
	0x02a6 00678 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_9+160(SP), CX
	0x02ae 00686 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, fmt..autotmp_4+168(SP)
	0x02b6 00694 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, fmt..autotmp_4+176(SP)
	0x02be 00702 (main.go:8)	MOVQ	fmt..autotmp_3+72(SP), AX
	0x02c3 00707 (main.go:8)	MOVQ	AX, fmt.n+64(SP)
	0x02c8 00712 (main.go:8)	MOVQ	fmt..autotmp_4+168(SP), AX
	0x02d0 00720 (main.go:8)	MOVQ	fmt..autotmp_4+176(SP), CX
	0x02d8 00728 (main.go:8)	MOVQ	AX, fmt.err+136(SP)
	0x02e0 00736 (main.go:8)	MOVQ	CX, fmt.err+144(SP)
	0x02e8 00744 (main.go:8)	JMP	746
	0x02ea 00746 (main.go:8)	PCDATA	$1, $-1
	0x02ea 00746 (main.go:8)	MOVQ	336(SP), BP
	0x02f2 00754 (main.go:8)	ADDQ	$344, SP
	0x02f9 00761 (main.go:8)	RET
	0x02fa 00762 (main.go:8)	JMP	290
	0x02ff 00767 (main.go:8)	NOP
	0x02ff 00767 (main.go:6)	PCDATA	$1, $-1
	0x02ff 00767 (main.go:6)	PCDATA	$0, $-2
	0x02ff 00767 (main.go:6)	NOP
	0x0300 00768 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x0305 00773 (main.go:6)	PCDATA	$0, $-1
	0x0305 00773 (main.go:6)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8d 84 24 28 ff ff ff 0f 1f 84 00 00 00 00 00  H..$(...........
	0x0020 48 3b 41 10 0f 86 d6 02 00 00 48 81 ec 58 01 00  H;A.......H..X..
	0x0030 00 48 89 ac 24 50 01 00 00 48 8d ac 24 50 01 00  .H..$P...H..$P..
	0x0040 00 0f 57 c0 0f 11 84 24 e8 00 00 00 c7 84 24 f8  ..W....$......$.
	0x0050 00 00 00 00 00 00 00 48 8b 84 24 e8 00 00 00 48  .......H..$....H
	0x0060 8b 8c 24 f0 00 00 00 48 89 84 24 18 01 00 00 48  ..$....H..$....H
	0x0070 89 8c 24 20 01 00 00 c7 84 24 28 01 00 00 00 00  ..$ .....$(.....
	0x0080 00 00 48 8d 84 24 e8 00 00 00 48 89 04 24 e8 00  ..H..$....H..$..
	0x0090 00 00 00 48 8b 44 24 08 48 8b 4c 24 10 48 89 84  ...H.D$.H.L$.H..
	0x00a0 24 98 00 00 00 48 89 8c 24 a0 00 00 00 48 8d 05  $....H..$....H..
	0x00b0 00 00 00 00 48 89 04 24 48 8d 84 24 18 01 00 00  ....H..$H..$....
	0x00c0 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 10 48  H.D$......H.D$.H
	0x00d0 8b 4c 24 18 48 89 84 24 d8 00 00 00 48 89 8c 24  .L$.H..$....H..$
	0x00e0 e0 00 00 00 48 8b 84 24 a0 00 00 00 48 8b 8c 24  ....H..$....H..$
	0x00f0 98 00 00 00 48 89 8c 24 b8 00 00 00 48 89 84 24  ....H..$....H..$
	0x0100 c0 00 00 00 48 89 4c 24 60 48 83 7c 24 60 00 75  ....H.L$`H.|$`.u
	0x0110 05 e9 e4 01 00 00 48 8b 41 08 48 89 44 24 60 90  ......H.A.H.D$`.
	0x0120 eb 00 48 8b 44 24 60 48 8b 8c 24 c0 00 00 00 48  ..H.D$`H..$....H
	0x0130 89 84 24 c8 00 00 00 48 89 8c 24 d0 00 00 00 48  ..$....H..$....H
	0x0140 8b 84 24 d8 00 00 00 48 8b 8c 24 e0 00 00 00 48  ..$....H..$....H
	0x0150 89 44 24 78 48 89 8c 24 80 00 00 00 48 8b 84 24  .D$xH..$....H..$
	0x0160 c8 00 00 00 48 8b 8c 24 d0 00 00 00 48 89 44 24  ....H..$....H.D$
	0x0170 68 48 89 4c 24 70 0f 57 c0 0f 11 84 24 30 01 00  hH.L$p.W....$0..
	0x0180 00 0f 11 84 24 40 01 00 00 48 8d 84 24 30 01 00  ....$@...H..$0..
	0x0190 00 48 89 44 24 58 84 00 48 8b 4c 24 78 48 8b 94  .H.D$X..H.L$xH..
	0x01a0 24 80 00 00 00 48 89 8c 24 30 01 00 00 48 89 94  $....H..$0...H..
	0x01b0 24 38 01 00 00 84 00 48 8b 44 24 68 48 8b 4c 24  $8.....H.D$hH.L$
	0x01c0 70 48 89 84 24 40 01 00 00 48 89 8c 24 48 01 00  pH..$@...H..$H..
	0x01d0 00 48 8b 44 24 58 84 00 eb 00 48 89 84 24 00 01  .H.D$X....H..$..
	0x01e0 00 00 48 c7 84 24 08 01 00 00 02 00 00 00 48 c7  ..H..$........H.
	0x01f0 84 24 10 01 00 00 02 00 00 00 48 c7 44 24 40 00  .$........H.D$@.
	0x0200 00 00 00 0f 57 c0 0f 11 84 24 88 00 00 00 48 c7  ....W....$....H.
	0x0210 44 24 48 00 00 00 00 0f 57 c0 0f 11 84 24 a8 00  D$H.....W....$..
	0x0220 00 00 0f 57 c0 0f 11 84 24 98 00 00 00 48 8b 84  ...W....$....H..
	0x0230 24 00 01 00 00 48 8b 8c 24 08 01 00 00 48 8b 94  $....H..$....H..
	0x0240 24 10 01 00 00 48 8b 1d 00 00 00 00 48 8d 35 00  $....H......H.5.
	0x0250 00 00 00 48 89 34 24 48 89 5c 24 08 48 89 44 24  ...H.4$H.\$.H.D$
	0x0260 10 48 89 4c 24 18 48 89 54 24 20 e8 00 00 00 00  .H.L$.H.T$ .....
	0x0270 48 8b 44 24 28 48 8b 4c 24 30 48 8b 54 24 38 48  H.D$(H.L$0H.T$8H
	0x0280 89 44 24 50 48 89 8c 24 98 00 00 00 48 89 94 24  .D$PH..$....H..$
	0x0290 a0 00 00 00 48 8b 44 24 50 48 89 44 24 48 48 8b  ....H.D$PH.D$HH.
	0x02a0 84 24 98 00 00 00 48 8b 8c 24 a0 00 00 00 48 89  .$....H..$....H.
	0x02b0 84 24 a8 00 00 00 48 89 8c 24 b0 00 00 00 48 8b  .$....H..$....H.
	0x02c0 44 24 48 48 89 44 24 40 48 8b 84 24 a8 00 00 00  D$HH.D$@H..$....
	0x02d0 48 8b 8c 24 b0 00 00 00 48 89 84 24 88 00 00 00  H..$....H..$....
	0x02e0 48 89 8c 24 90 00 00 00 eb 00 48 8b ac 24 50 01  H..$......H..$P.
	0x02f0 00 00 48 81 c4 58 01 00 00 c3 e9 23 fe ff ff 90  ..H..X.....#....
	0x0300 e8 00 00 00 00 e9 f6 fc ff ff                    ..........
	rel 3+0 t=25 type."".MuteType+0
	rel 3+0 t=25 type.*os.File+0
	rel 12+4 t=17 TLS+0
	rel 143+4 t=8 "".SetMuteType+0
	rel 176+4 t=16 type."".MuteType+0
	rel 198+4 t=8 runtime.convT2E+0
	rel 584+4 t=16 os.Stdout+0
	rel 591+4 t=16 go.itab.*os.File,io.Writer+0
	rel 620+4 t=8 fmt.Fprintln+0
	rel 769+4 t=8 runtime.morestack_noctxt+0
"".SetMuteType STEXT size=118 args=0x18 locals=0x8 funcid=0x0
	0x0000 00000 (main.go:19)	TEXT	"".SetMuteType(SB), ABIInternal, $8-24
	0x0000 00000 (main.go:19)	MOVQ	TLS, CX
	0x0009 00009 (main.go:19)	PCDATA	$0, $-2
	0x0009 00009 (main.go:19)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:19)	PCDATA	$0, $-1
	0x0010 00016 (main.go:19)	CMPQ	SP, 16(CX)
	0x0014 00020 (main.go:19)	PCDATA	$0, $-2
	0x0014 00020 (main.go:19)	JLS	111
	0x0016 00022 (main.go:19)	PCDATA	$0, $-1
	0x0016 00022 (main.go:19)	SUBQ	$8, SP
	0x001a 00026 (main.go:19)	MOVQ	BP, (SP)
	0x001e 00030 (main.go:19)	LEAQ	(SP), BP
	0x0022 00034 (main.go:19)	FUNCDATA	$0, gclocals路e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0022 00034 (main.go:19)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0022 00034 (main.go:19)	XORPS	X0, X0
	0x0025 00037 (main.go:19)	MOVUPS	X0, "".~r1+24(SP)
	0x002a 00042 (main.go:20)	MOVQ	"".muteType+16(SP), DI
	0x002f 00047 (main.go:20)	TESTB	AL, (DI)
	0x0031 00049 (main.go:20)	MOVQ	$5, 8(DI)
	0x0039 00057 (main.go:20)	PCDATA	$0, $-2
	0x0039 00057 (main.go:20)	CMPL	runtime.writeBarrier(SB), $0
	0x0040 00064 (main.go:20)	JEQ	68
	0x0042 00066 (main.go:20)	JMP	97
	0x0044 00068 (main.go:20)	LEAQ	go.string."hello"(SB), AX
	0x004b 00075 (main.go:20)	MOVQ	AX, (DI)
	0x004e 00078 (main.go:20)	JMP	80
	0x0050 00080 (main.go:21)	PCDATA	$0, $-1
	0x0050 00080 (main.go:21)	XORPS	X0, X0
	0x0053 00083 (main.go:21)	MOVUPS	X0, "".~r1+24(SP)
	0x0058 00088 (main.go:21)	MOVQ	(SP), BP
	0x005c 00092 (main.go:21)	ADDQ	$8, SP
	0x0060 00096 (main.go:21)	RET
	0x0061 00097 (main.go:20)	PCDATA	$0, $-2
	0x0061 00097 (main.go:20)	LEAQ	go.string."hello"(SB), AX
	0x0068 00104 (main.go:20)	CALL	runtime.gcWriteBarrier(SB)
	0x006d 00109 (main.go:20)	JMP	80
	0x006f 00111 (main.go:20)	NOP
	0x006f 00111 (main.go:19)	PCDATA	$1, $-1
	0x006f 00111 (main.go:19)	PCDATA	$0, $-2
	0x006f 00111 (main.go:19)	CALL	runtime.morestack_noctxt(SB)
	0x0074 00116 (main.go:19)	PCDATA	$0, $-1
	0x0074 00116 (main.go:19)	JMP	0
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
type..eq."".MuteType STEXT dupok size=215 args=0x18 locals=0x48 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".MuteType(SB), DUPOK|ABIInternal, $72-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	TLS, CX
	0x0009 00009 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0009 00009 (<autogenerated>:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0010 00016 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0014 00020 (<autogenerated>:1)	JLS	205
	0x001a 00026 (<autogenerated>:1)	PCDATA	$0, $-1
	0x001a 00026 (<autogenerated>:1)	SUBQ	$72, SP
	0x001e 00030 (<autogenerated>:1)	MOVQ	BP, 64(SP)
	0x0023 00035 (<autogenerated>:1)	LEAQ	64(SP), BP
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$0, gclocals路dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x0028 00040 (<autogenerated>:1)	FUNCDATA	$1, gclocals路2589ca35330fc0fce83503f4569854a0(SB)
	0x0028 00040 (<autogenerated>:1)	MOVB	$0, "".r+96(SP)
	0x002d 00045 (<autogenerated>:1)	MOVQ	"".p+80(SP), AX
	0x0032 00050 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x0036 00054 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_3+40(SP)
	0x003b 00059 (<autogenerated>:1)	MOVQ	"".q+88(SP), AX
	0x0040 00064 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x0044 00068 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_4+32(SP)
	0x0049 00073 (<autogenerated>:1)	CMPQ	""..autotmp_3+40(SP), AX
	0x004e 00078 (<autogenerated>:1)	JEQ	82
	0x0050 00080 (<autogenerated>:1)	JMP	203
	0x0052 00082 (<autogenerated>:1)	JMP	84
	0x0054 00084 (<autogenerated>:1)	MOVQ	"".p+80(SP), AX
	0x0059 00089 (<autogenerated>:1)	MOVQ	"".q+88(SP), CX
	0x005e 00094 (<autogenerated>:1)	MOVL	16(CX), CX
	0x0061 00097 (<autogenerated>:1)	CMPL	16(AX), CX
	0x0064 00100 (<autogenerated>:1)	JEQ	104
	0x0066 00102 (<autogenerated>:1)	JMP	194
	0x0068 00104 (<autogenerated>:1)	MOVQ	"".p+80(SP), AX
	0x006d 00109 (<autogenerated>:1)	MOVQ	8(AX), AX
	0x0071 00113 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_3+40(SP)
	0x0076 00118 (<autogenerated>:1)	MOVQ	"".p+80(SP), AX
	0x007b 00123 (<autogenerated>:1)	MOVQ	(AX), AX
	0x007e 00126 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_5+56(SP)
	0x0083 00131 (<autogenerated>:1)	MOVQ	"".q+88(SP), AX
	0x0088 00136 (<autogenerated>:1)	MOVQ	(AX), AX
	0x008b 00139 (<autogenerated>:1)	MOVQ	AX, ""..autotmp_6+48(SP)
	0x0090 00144 (<autogenerated>:1)	MOVQ	""..autotmp_3+40(SP), CX
	0x0095 00149 (<autogenerated>:1)	MOVQ	""..autotmp_5+56(SP), DX
	0x009a 00154 (<autogenerated>:1)	MOVQ	DX, (SP)
	0x009e 00158 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x00a3 00163 (<autogenerated>:1)	MOVQ	CX, 16(SP)
	0x00a8 00168 (<autogenerated>:1)	PCDATA	$1, $1
	0x00a8 00168 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x00ad 00173 (<autogenerated>:1)	MOVBLZX	24(SP), AX
	0x00b2 00178 (<autogenerated>:1)	MOVB	AL, "".r+96(SP)
	0x00b6 00182 (<autogenerated>:1)	JMP	184
	0x00b8 00184 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00b8 00184 (<autogenerated>:1)	MOVQ	64(SP), BP
	0x00bd 00189 (<autogenerated>:1)	ADDQ	$72, SP
	0x00c1 00193 (<autogenerated>:1)	RET
	0x00c2 00194 (<autogenerated>:1)	JMP	196
	0x00c4 00196 (<autogenerated>:1)	MOVB	$0, "".r+96(SP)
	0x00c9 00201 (<autogenerated>:1)	JMP	184
	0x00cb 00203 (<autogenerated>:1)	JMP	196
	0x00cd 00205 (<autogenerated>:1)	NOP
	0x00cd 00205 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00cd 00205 (<autogenerated>:1)	PCDATA	$0, $-2
	0x00cd 00205 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00d2 00210 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00d2 00210 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 0f 86 b3 00 00 00 48 83 ec 48 48 89  H;a.......H..HH.
	0x0020 6c 24 40 48 8d 6c 24 40 c6 44 24 60 00 48 8b 44  l$@H.l$@.D$`.H.D
	0x0030 24 50 48 8b 40 08 48 89 44 24 28 48 8b 44 24 58  $PH.@.H.D$(H.D$X
	0x0040 48 8b 40 08 48 89 44 24 20 48 39 44 24 28 74 02  H.@.H.D$ H9D$(t.
	0x0050 eb 79 eb 00 48 8b 44 24 50 48 8b 4c 24 58 8b 49  .y..H.D$PH.L$X.I
	0x0060 10 39 48 10 74 02 eb 5a 48 8b 44 24 50 48 8b 40  .9H.t..ZH.D$PH.@
	0x0070 08 48 89 44 24 28 48 8b 44 24 50 48 8b 00 48 89  .H.D$(H.D$PH..H.
	0x0080 44 24 38 48 8b 44 24 58 48 8b 00 48 89 44 24 30  D$8H.D$XH..H.D$0
	0x0090 48 8b 4c 24 28 48 8b 54 24 38 48 89 14 24 48 89  H.L$(H.T$8H..$H.
	0x00a0 44 24 08 48 89 4c 24 10 e8 00 00 00 00 0f b6 44  D$.H.L$........D
	0x00b0 24 18 88 44 24 60 eb 00 48 8b 6c 24 40 48 83 c4  $..D$`..H.l$@H..
	0x00c0 48 c3 eb 00 c6 44 24 60 00 eb ed eb f7 e8 00 00  H....D$`........
	0x00d0 00 00 e9 29 ff ff ff                             ...)...
	rel 12+4 t=17 TLS+0
	rel 169+4 t=8 runtime.memequal+0
	rel 206+4 t=8 runtime.morestack_noctxt+0
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
type..eqfunc."".MuteType SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".MuteType+0
runtime.memequal64路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.MuteType. SRODATA dupok size=17
	0x0000 01 00 0e 2a 6d 61 69 6e 2e 4d 75 74 65 54 79 70  ...*main.MuteTyp
	0x0010 65                                               e
type.*"".MuteType SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ed c6 30 b5 08 08 08 36 00 00 00 00 00 00 00 00  ..0....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.MuteType.+0
	rel 48+8 t=1 type."".MuteType+0
type..namedata.Name. SRODATA dupok size=7
	0x0000 01 00 04 4e 61 6d 65                             ...Name
type..namedata.Age. SRODATA dupok size=6
	0x0000 01 00 03 41 67 65                                ...Age
type."".MuteType SRODATA size=144
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d9 b0 fc 41 07 08 08 19 00 00 00 00 00 00 00 00  ...A............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	rel 24+8 t=1 type..eqfunc."".MuteType+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.MuteType.+0
	rel 44+4 t=5 type.*"".MuteType+0
	rel 56+8 t=1 type."".MuteType+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.Name.+0
	rel 104+8 t=1 type.string+0
	rel 120+8 t=1 type..namedata.Age.+0
	rel 128+8 t=1 type.int32+0
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
gclocals路609bba0db57fe488d619001b5f8b9e37 SRODATA dupok size=20
	0x0000 03 00 00 00 1f 00 00 00 00 00 00 00 00 00 00 01  ................
	0x0010 00 02 00 00                                      ....
"".main.stkobj SRODATA static size=56
	0x0000 03 00 00 00 00 00 00 00 98 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00 c8 ff ff ff ff ff ff ff  ................
	0x0020 00 00 00 00 00 00 00 00 e0 ff ff ff ff ff ff ff  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type."".MuteType+0
	rel 32+8 t=1 type."".MuteType+0
	rel 48+8 t=1 type.[2]interface {}+0
gclocals路e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals路dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals路2589ca35330fc0fce83503f4569854a0 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
gclocals路955e25ebd21d9d330257196a49a276e5 SRODATA dupok size=10
	0x0000 02 00 00 00 04 00 00 00 00 00                    ..........
