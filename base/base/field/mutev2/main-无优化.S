"".main STEXT size=563 args=0x0 locals=0x110 funcid=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $272-0
	0x0000 00000 (main.go:6)	MOVQ	TLS, CX
	0x0009 00009 (main.go:6)	PCDATA	$0, $-2
	0x0009 00009 (main.go:6)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:6)	PCDATA	$0, $-1
	0x0010 00016 (main.go:6)	LEAQ	-144(SP), AX
	0x0018 00024 (main.go:6)	NOP
	0x0020 00032 (main.go:6)	CMPQ	AX, 16(CX)
	0x0024 00036 (main.go:6)	PCDATA	$0, $-2
	0x0024 00036 (main.go:6)	JLS	553
	0x002a 00042 (main.go:6)	PCDATA	$0, $-1
	0x002a 00042 (main.go:6)	SUBQ	$272, SP
	0x0031 00049 (main.go:6)	MOVQ	BP, 264(SP)
	0x0039 00057 (main.go:6)	LEAQ	264(SP), BP
	0x0041 00065 (main.go:6)	FUNCDATA	$0, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0041 00065 (main.go:6)	FUNCDATA	$1, gclocals路8604ddb3a3b398e2ff3c903a91fee0f4(SB)
	0x0041 00065 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0041 00065 (main.go:7)	XORPS	X0, X0
	0x0044 00068 (main.go:7)	MOVUPS	X0, "".muteType+192(SP)
	0x004c 00076 (main.go:7)	MOVL	$0, "".muteType+208(SP)
	0x0057 00087 (main.go:8)	LEAQ	"".muteType+192(SP), AX
	0x005f 00095 (main.go:8)	MOVQ	AX, (SP)
	0x0063 00099 (main.go:8)	PCDATA	$1, $1
	0x0063 00099 (main.go:8)	CALL	"".SetMuteType(SB)
	0x0068 00104 (main.go:9)	MOVQ	"".muteType+192(SP), AX
	0x0070 00112 (main.go:9)	MOVQ	"".muteType+200(SP), CX
	0x0078 00120 (main.go:9)	MOVL	"".muteType+208(SP), DX
	0x007f 00127 (main.go:9)	MOVQ	AX, ""..autotmp_7+240(SP)
	0x0087 00135 (main.go:9)	MOVQ	CX, ""..autotmp_7+248(SP)
	0x008f 00143 (main.go:9)	MOVL	DX, ""..autotmp_7+256(SP)
	0x0096 00150 (main.go:9)	LEAQ	type."".MuteType(SB), AX
	0x009d 00157 (main.go:9)	MOVQ	AX, (SP)
	0x00a1 00161 (main.go:9)	LEAQ	""..autotmp_7+240(SP), AX
	0x00a9 00169 (main.go:9)	MOVQ	AX, 8(SP)
	0x00ae 00174 (main.go:9)	PCDATA	$1, $0
	0x00ae 00174 (main.go:9)	CALL	runtime.convT2E(SB)
	0x00b3 00179 (main.go:9)	MOVQ	16(SP), AX
	0x00b8 00184 (main.go:9)	MOVQ	24(SP), CX
	0x00bd 00189 (main.go:9)	MOVQ	AX, ""..autotmp_10+176(SP)
	0x00c5 00197 (main.go:9)	MOVQ	CX, ""..autotmp_10+184(SP)
	0x00cd 00205 (main.go:9)	MOVQ	AX, "".~arg0+96(SP)
	0x00d2 00210 (main.go:9)	MOVQ	CX, "".~arg0+104(SP)
	0x00d7 00215 (main.go:9)	XORPS	X0, X0
	0x00da 00218 (main.go:9)	MOVUPS	X0, ""..autotmp_13+160(SP)
	0x00e2 00226 (main.go:9)	LEAQ	""..autotmp_13+160(SP), AX
	0x00ea 00234 (main.go:9)	MOVQ	AX, ""..autotmp_11+88(SP)
	0x00ef 00239 (main.go:9)	TESTB	AL, (AX)
	0x00f1 00241 (main.go:9)	MOVQ	"".~arg0+104(SP), CX
	0x00f6 00246 (main.go:9)	MOVQ	"".~arg0+96(SP), DX
	0x00fb 00251 (main.go:9)	MOVQ	DX, ""..autotmp_13+160(SP)
	0x0103 00259 (main.go:9)	MOVQ	CX, ""..autotmp_13+168(SP)
	0x010b 00267 (main.go:9)	TESTB	AL, (AX)
	0x010d 00269 (main.go:9)	JMP	271
	0x010f 00271 (main.go:9)	MOVQ	AX, fmt.a+216(SP)
	0x0117 00279 (main.go:9)	MOVQ	$1, fmt.a+224(SP)
	0x0123 00291 (main.go:9)	MOVQ	$1, fmt.a+232(SP)
	0x012f 00303 (main.go:9)	MOVQ	$0, fmt.n+64(SP)
	0x0138 00312 (main.go:9)	XORPS	X0, X0
	0x013b 00315 (main.go:9)	MOVUPS	X0, fmt.err+112(SP)
	0x0140 00320 (<unknown line number>)	NOP
	0x0140 00320 (main.go:9)	MOVQ	$0, fmt..autotmp_3+80(SP)
	0x0149 00329 (main.go:9)	XORPS	X0, X0
	0x014c 00332 (main.go:9)	MOVUPS	X0, fmt..autotmp_4+144(SP)
	0x0154 00340 ($GOROOT\src\fmt\print.go:274)	XORPS	X0, X0
	0x0157 00343 ($GOROOT\src\fmt\print.go:274)	MOVUPS	X0, ""..autotmp_9+128(SP)
	0x015f 00351 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+216(SP), AX
	0x0167 00359 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+224(SP), CX
	0x016f 00367 ($GOROOT\src\fmt\print.go:274)	MOVQ	fmt.a+232(SP), DX
	0x0177 00375 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), BX
	0x017e 00382 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), SI
	0x0185 00389 ($GOROOT\src\fmt\print.go:274)	MOVQ	SI, (SP)
	0x0189 00393 ($GOROOT\src\fmt\print.go:274)	MOVQ	BX, 8(SP)
	0x018e 00398 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 16(SP)
	0x0193 00403 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, 24(SP)
	0x0198 00408 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, 32(SP)
	0x019d 00413 ($GOROOT\src\fmt\print.go:274)	NOP
	0x01a0 00416 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x01a5 00421 ($GOROOT\src\fmt\print.go:274)	MOVQ	40(SP), AX
	0x01aa 00426 ($GOROOT\src\fmt\print.go:274)	MOVQ	48(SP), CX
	0x01af 00431 ($GOROOT\src\fmt\print.go:274)	MOVQ	56(SP), DX
	0x01b4 00436 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, ""..autotmp_8+72(SP)
	0x01b9 00441 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, ""..autotmp_9+128(SP)
	0x01c1 00449 ($GOROOT\src\fmt\print.go:274)	MOVQ	DX, ""..autotmp_9+136(SP)
	0x01c9 00457 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_8+72(SP), AX
	0x01ce 00462 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, fmt..autotmp_3+80(SP)
	0x01d3 00467 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_9+128(SP), AX
	0x01db 00475 ($GOROOT\src\fmt\print.go:274)	MOVQ	""..autotmp_9+136(SP), CX
	0x01e3 00483 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, fmt..autotmp_4+144(SP)
	0x01eb 00491 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, fmt..autotmp_4+152(SP)
	0x01f3 00499 (main.go:9)	MOVQ	fmt..autotmp_3+80(SP), AX
	0x01f8 00504 (main.go:9)	MOVQ	AX, fmt.n+64(SP)
	0x01fd 00509 (main.go:9)	MOVQ	fmt..autotmp_4+144(SP), AX
	0x0205 00517 (main.go:9)	MOVQ	fmt..autotmp_4+152(SP), CX
	0x020d 00525 (main.go:9)	MOVQ	AX, fmt.err+112(SP)
	0x0212 00530 (main.go:9)	MOVQ	CX, fmt.err+120(SP)
	0x0217 00535 (main.go:9)	JMP	537
	0x0219 00537 (main.go:9)	PCDATA	$1, $-1
	0x0219 00537 (main.go:9)	MOVQ	264(SP), BP
	0x0221 00545 (main.go:9)	ADDQ	$272, SP
	0x0228 00552 (main.go:9)	RET
	0x0229 00553 (main.go:9)	NOP
	0x0229 00553 (main.go:6)	PCDATA	$1, $-1
	0x0229 00553 (main.go:6)	PCDATA	$0, $-2
	0x0229 00553 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x022e 00558 (main.go:6)	PCDATA	$0, $-1
	0x022e 00558 (main.go:6)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8d 84 24 70 ff ff ff 0f 1f 84 00 00 00 00 00  H..$p...........
	0x0020 48 3b 41 10 0f 86 ff 01 00 00 48 81 ec 10 01 00  H;A.......H.....
	0x0030 00 48 89 ac 24 08 01 00 00 48 8d ac 24 08 01 00  .H..$....H..$...
	0x0040 00 0f 57 c0 0f 11 84 24 c0 00 00 00 c7 84 24 d0  ..W....$......$.
	0x0050 00 00 00 00 00 00 00 48 8d 84 24 c0 00 00 00 48  .......H..$....H
	0x0060 89 04 24 e8 00 00 00 00 48 8b 84 24 c0 00 00 00  ..$.....H..$....
	0x0070 48 8b 8c 24 c8 00 00 00 8b 94 24 d0 00 00 00 48  H..$......$....H
	0x0080 89 84 24 f0 00 00 00 48 89 8c 24 f8 00 00 00 89  ..$....H..$.....
	0x0090 94 24 00 01 00 00 48 8d 05 00 00 00 00 48 89 04  .$....H......H..
	0x00a0 24 48 8d 84 24 f0 00 00 00 48 89 44 24 08 e8 00  $H..$....H.D$...
	0x00b0 00 00 00 48 8b 44 24 10 48 8b 4c 24 18 48 89 84  ...H.D$.H.L$.H..
	0x00c0 24 b0 00 00 00 48 89 8c 24 b8 00 00 00 48 89 44  $....H..$....H.D
	0x00d0 24 60 48 89 4c 24 68 0f 57 c0 0f 11 84 24 a0 00  $`H.L$h.W....$..
	0x00e0 00 00 48 8d 84 24 a0 00 00 00 48 89 44 24 58 84  ..H..$....H.D$X.
	0x00f0 00 48 8b 4c 24 68 48 8b 54 24 60 48 89 94 24 a0  .H.L$hH.T$`H..$.
	0x0100 00 00 00 48 89 8c 24 a8 00 00 00 84 00 eb 00 48  ...H..$........H
	0x0110 89 84 24 d8 00 00 00 48 c7 84 24 e0 00 00 00 01  ..$....H..$.....
	0x0120 00 00 00 48 c7 84 24 e8 00 00 00 01 00 00 00 48  ...H..$........H
	0x0130 c7 44 24 40 00 00 00 00 0f 57 c0 0f 11 44 24 70  .D$@.....W...D$p
	0x0140 48 c7 44 24 50 00 00 00 00 0f 57 c0 0f 11 84 24  H.D$P.....W....$
	0x0150 90 00 00 00 0f 57 c0 0f 11 84 24 80 00 00 00 48  .....W....$....H
	0x0160 8b 84 24 d8 00 00 00 48 8b 8c 24 e0 00 00 00 48  ..$....H..$....H
	0x0170 8b 94 24 e8 00 00 00 48 8b 1d 00 00 00 00 48 8d  ..$....H......H.
	0x0180 35 00 00 00 00 48 89 34 24 48 89 5c 24 08 48 89  5....H.4$H.\$.H.
	0x0190 44 24 10 48 89 4c 24 18 48 89 54 24 20 0f 1f 00  D$.H.L$.H.T$ ...
	0x01a0 e8 00 00 00 00 48 8b 44 24 28 48 8b 4c 24 30 48  .....H.D$(H.L$0H
	0x01b0 8b 54 24 38 48 89 44 24 48 48 89 8c 24 80 00 00  .T$8H.D$HH..$...
	0x01c0 00 48 89 94 24 88 00 00 00 48 8b 44 24 48 48 89  .H..$....H.D$HH.
	0x01d0 44 24 50 48 8b 84 24 80 00 00 00 48 8b 8c 24 88  D$PH..$....H..$.
	0x01e0 00 00 00 48 89 84 24 90 00 00 00 48 89 8c 24 98  ...H..$....H..$.
	0x01f0 00 00 00 48 8b 44 24 50 48 89 44 24 40 48 8b 84  ...H.D$PH.D$@H..
	0x0200 24 90 00 00 00 48 8b 8c 24 98 00 00 00 48 89 44  $....H..$....H.D
	0x0210 24 70 48 89 4c 24 78 eb 00 48 8b ac 24 08 01 00  $pH.L$x..H..$...
	0x0220 00 48 81 c4 10 01 00 00 c3 e8 00 00 00 00 e9 cd  .H..............
	0x0230 fd ff ff                                         ...
	rel 3+0 t=25 type."".MuteType+0
	rel 3+0 t=25 type.*os.File+0
	rel 12+4 t=17 TLS+0
	rel 100+4 t=8 "".SetMuteType+0
	rel 153+4 t=16 type."".MuteType+0
	rel 175+4 t=8 runtime.convT2E+0
	rel 378+4 t=16 os.Stdout+0
	rel 385+4 t=16 go.itab.*os.File,io.Writer+0
	rel 417+4 t=8 fmt.Fprintln+0
	rel 554+4 t=8 runtime.morestack_noctxt+0
"".SetMuteType STEXT size=118 args=0x18 locals=0x8 funcid=0x0
	0x0000 00000 (main.go:20)	TEXT	"".SetMuteType(SB), ABIInternal, $8-24
	0x0000 00000 (main.go:20)	MOVQ	TLS, CX
	0x0009 00009 (main.go:20)	PCDATA	$0, $-2
	0x0009 00009 (main.go:20)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:20)	PCDATA	$0, $-1
	0x0010 00016 (main.go:20)	CMPQ	SP, 16(CX)
	0x0014 00020 (main.go:20)	PCDATA	$0, $-2
	0x0014 00020 (main.go:20)	JLS	111
	0x0016 00022 (main.go:20)	PCDATA	$0, $-1
	0x0016 00022 (main.go:20)	SUBQ	$8, SP
	0x001a 00026 (main.go:20)	MOVQ	BP, (SP)
	0x001e 00030 (main.go:20)	LEAQ	(SP), BP
	0x0022 00034 (main.go:20)	FUNCDATA	$0, gclocals路e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0022 00034 (main.go:20)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0022 00034 (main.go:20)	XORPS	X0, X0
	0x0025 00037 (main.go:20)	MOVUPS	X0, "".~r1+24(SP)
	0x002a 00042 (main.go:21)	MOVQ	"".muteType+16(SP), DI
	0x002f 00047 (main.go:21)	TESTB	AL, (DI)
	0x0031 00049 (main.go:21)	MOVQ	$5, 8(DI)
	0x0039 00057 (main.go:21)	PCDATA	$0, $-2
	0x0039 00057 (main.go:21)	CMPL	runtime.writeBarrier(SB), $0
	0x0040 00064 (main.go:21)	JEQ	68
	0x0042 00066 (main.go:21)	JMP	97
	0x0044 00068 (main.go:21)	LEAQ	go.string."hello"(SB), AX
	0x004b 00075 (main.go:21)	MOVQ	AX, (DI)
	0x004e 00078 (main.go:21)	JMP	80
	0x0050 00080 (main.go:22)	PCDATA	$0, $-1
	0x0050 00080 (main.go:22)	XORPS	X0, X0
	0x0053 00083 (main.go:22)	MOVUPS	X0, "".~r1+24(SP)
	0x0058 00088 (main.go:22)	MOVQ	(SP), BP
	0x005c 00092 (main.go:22)	ADDQ	$8, SP
	0x0060 00096 (main.go:22)	RET
	0x0061 00097 (main.go:21)	PCDATA	$0, $-2
	0x0061 00097 (main.go:21)	LEAQ	go.string."hello"(SB), AX
	0x0068 00104 (main.go:21)	CALL	runtime.gcWriteBarrier(SB)
	0x006d 00109 (main.go:21)	JMP	80
	0x006f 00111 (main.go:21)	NOP
	0x006f 00111 (main.go:20)	PCDATA	$1, $-1
	0x006f 00111 (main.go:20)	PCDATA	$0, $-2
	0x006f 00111 (main.go:20)	CALL	runtime.morestack_noctxt(SB)
	0x0074 00116 (main.go:20)	PCDATA	$0, $-1
	0x0074 00116 (main.go:20)	JMP	0
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
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 08 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal路f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
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
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals路8604ddb3a3b398e2ff3c903a91fee0f4 SRODATA dupok size=14
	0x0000 02 00 00 00 16 00 00 00 00 00 00 00 20 00        ............ .
"".main.stkobj SRODATA static size=56
	0x0000 03 00 00 00 00 00 00 00 98 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00 b8 ff ff ff ff ff ff ff  ................
	0x0020 00 00 00 00 00 00 00 00 e8 ff ff ff ff ff ff ff  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
	rel 32+8 t=1 type."".MuteType+0
	rel 48+8 t=1 type."".MuteType+0
gclocals路e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals路dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals路2589ca35330fc0fce83503f4569854a0 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 00                    ..........
