"".main STEXT size=207 args=0x0 locals=0x80 funcid=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $128-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	PCDATA	$0, $-2
	0x0004 00004 (main.go:6)	JLS	197
	0x000a 00010 (main.go:6)	PCDATA	$0, $-1
	0x000a 00010 (main.go:6)	ADDQ	$-128, SP
	0x000e 00014 (main.go:6)	MOVQ	BP, 120(SP)
	0x0013 00019 (main.go:6)	LEAQ	120(SP), BP
	0x0018 00024 (main.go:6)	FUNCDATA	$0, gclocals路7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$1, gclocals路545a9885637b5023c1f9ebe404e2a6df(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0018 00024 (main.go:7)	MOVUPS	X15, "".oneType+56(SP)
	0x001e 00030 (main.go:8)	LEAQ	"".oneType+56(SP), AX
	0x0023 00035 (main.go:8)	PCDATA	$1, $1
	0x0023 00035 (main.go:8)	CALL	"".SetOneType(SB)
	0x0028 00040 (main.go:8)	MOVQ	AX, ""..autotmp_24+48(SP)
	0x002d 00045 (main.go:8)	MOVQ	BX, "".~arg1.data+40(SP)
	0x0032 00050 (main.go:8)	MOVQ	"".oneType+64(SP), CX
	0x0037 00055 (main.go:8)	MOVQ	"".oneType+56(SP), DX
	0x003c 00060 (main.go:8)	MOVQ	DX, ""..autotmp_10+72(SP)
	0x0041 00065 (main.go:8)	MOVQ	CX, ""..autotmp_10+80(SP)
	0x0046 00070 (main.go:8)	MOVQ	""..autotmp_10+72(SP), DX
	0x004b 00075 (main.go:8)	MOVQ	DX, AX
	0x004e 00078 (main.go:8)	MOVQ	CX, BX
	0x0051 00081 (main.go:8)	PCDATA	$1, $2
	0x0051 00081 (main.go:8)	CALL	runtime.convTstring(SB)
	0x0056 00086 (main.go:8)	MOVQ	""..autotmp_24+48(SP), CX
	0x005b 00091 (main.go:8)	NOP
	0x0060 00096 (main.go:8)	TESTQ	CX, CX
	0x0063 00099 (main.go:8)	JEQ	107
	0x0065 00101 (main.go:8)	MOVQ	8(CX), DX
	0x0069 00105 (main.go:8)	JMP	110
	0x006b 00107 (main.go:8)	MOVQ	CX, DX
	0x006e 00110 (main.go:8)	LEAQ	""..autotmp_16+88(SP), CX
	0x0073 00115 (main.go:8)	MOVUPS	X15, (CX)
	0x0077 00119 (main.go:8)	LEAQ	""..autotmp_16+104(SP), R8
	0x007c 00124 (main.go:8)	MOVUPS	X15, (R8)
	0x0080 00128 (main.go:8)	LEAQ	type."".OneType(SB), R8
	0x0087 00135 (main.go:8)	MOVQ	R8, ""..autotmp_16+88(SP)
	0x008c 00140 (main.go:8)	MOVQ	AX, ""..autotmp_16+96(SP)
	0x0091 00145 (main.go:8)	MOVQ	DX, ""..autotmp_16+104(SP)
	0x0096 00150 (main.go:8)	MOVQ	"".~arg1.data+40(SP), DX
	0x009b 00155 (main.go:8)	MOVQ	DX, ""..autotmp_16+112(SP)
	0x00a0 00160 (<unknown line number>)	NOP
	0x00a0 00160 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), BX
	0x00a7 00167 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x00ae 00174 ($GOROOT\src\fmt\print.go:274)	MOVL	$2, DI
	0x00b3 00179 ($GOROOT\src\fmt\print.go:274)	MOVQ	DI, SI
	0x00b6 00182 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $0
	0x00b6 00182 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x00bb 00187 (main.go:9)	MOVQ	120(SP), BP
	0x00c0 00192 (main.go:9)	SUBQ	$-128, SP
	0x00c4 00196 (main.go:9)	RET
	0x00c5 00197 (main.go:9)	NOP
	0x00c5 00197 (main.go:6)	PCDATA	$1, $-1
	0x00c5 00197 (main.go:6)	PCDATA	$0, $-2
	0x00c5 00197 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x00ca 00202 (main.go:6)	PCDATA	$0, $-1
	0x00ca 00202 (main.go:6)	JMP	0
	0x0000 49 3b 66 10 0f 86 bb 00 00 00 48 83 c4 80 48 89  I;f.......H...H.
	0x0010 6c 24 78 48 8d 6c 24 78 44 0f 11 7c 24 38 48 8d  l$xH.l$xD..|$8H.
	0x0020 44 24 38 e8 00 00 00 00 48 89 44 24 30 48 89 5c  D$8.....H.D$0H.\
	0x0030 24 28 48 8b 4c 24 40 48 8b 54 24 38 48 89 54 24  $(H.L$@H.T$8H.T$
	0x0040 48 48 89 4c 24 50 48 8b 54 24 48 48 89 d0 48 89  HH.L$PH.T$HH..H.
	0x0050 cb e8 00 00 00 00 48 8b 4c 24 30 0f 1f 44 00 00  ......H.L$0..D..
	0x0060 48 85 c9 74 06 48 8b 51 08 eb 03 48 89 ca 48 8d  H..t.H.Q...H..H.
	0x0070 4c 24 58 44 0f 11 39 4c 8d 44 24 68 45 0f 11 38  L$XD..9L.D$hE..8
	0x0080 4c 8d 05 00 00 00 00 4c 89 44 24 58 48 89 44 24  L......L.D$XH.D$
	0x0090 60 48 89 54 24 68 48 8b 54 24 28 48 89 54 24 70  `H.T$hH.T$(H.T$p
	0x00a0 48 8b 1d 00 00 00 00 48 8d 05 00 00 00 00 bf 02  H......H........
	0x00b0 00 00 00 48 89 fe e8 00 00 00 00 48 8b 6c 24 78  ...H.......H.l$x
	0x00c0 48 83 ec 80 c3 e8 00 00 00 00 e9 31 ff ff ff     H..........1...
	rel 3+0 t=24 type."".OneType+0
	rel 3+0 t=24 type.*os.File+0
	rel 36+4 t=7 "".SetOneType+0
	rel 82+4 t=7 runtime.convTstring+0
	rel 131+4 t=15 type."".OneType+0
	rel 163+4 t=15 os.Stdout+0
	rel 170+4 t=15 go.itab.*os.File,io.Writer+0
	rel 183+4 t=7 fmt.Fprintln+0
	rel 198+4 t=7 runtime.morestack_noctxt+0
"".SetOneType STEXT size=92 args=0x8 locals=0x8 funcid=0x0
	0x0000 00000 (main.go:18)	TEXT	"".SetOneType(SB), ABIInternal, $8-8
	0x0000 00000 (main.go:18)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:18)	PCDATA	$0, $-2
	0x0004 00004 (main.go:18)	JLS	75
	0x0006 00006 (main.go:18)	PCDATA	$0, $-1
	0x0006 00006 (main.go:18)	SUBQ	$8, SP
	0x000a 00010 (main.go:18)	MOVQ	BP, (SP)
	0x000e 00014 (main.go:18)	LEAQ	(SP), BP
	0x0012 00018 (main.go:18)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x0012 00018 (main.go:18)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0012 00018 (main.go:18)	FUNCDATA	$5, "".SetOneType.arginfo1(SB)
	0x0012 00018 (main.go:19)	MOVQ	$5, 8(AX)
	0x001a 00026 (main.go:19)	PCDATA	$0, $-2
	0x001a 00026 (main.go:19)	CMPL	runtime.writeBarrier(SB), $0
	0x0021 00033 (main.go:19)	JNE	47
	0x0023 00035 (main.go:19)	LEAQ	go.string."hello"(SB), CX
	0x002a 00042 (main.go:19)	MOVQ	CX, (AX)
	0x002d 00045 (main.go:19)	JMP	62
	0x002f 00047 (main.go:19)	MOVQ	AX, DI
	0x0032 00050 (main.go:19)	LEAQ	go.string."hello"(SB), CX
	0x0039 00057 (main.go:19)	CALL	runtime.gcWriteBarrierCX(SB)
	0x003e 00062 (main.go:20)	PCDATA	$0, $-1
	0x003e 00062 (main.go:20)	XORL	AX, AX
	0x0040 00064 (main.go:20)	XORL	BX, BX
	0x0042 00066 (main.go:20)	MOVQ	(SP), BP
	0x0046 00070 (main.go:20)	ADDQ	$8, SP
	0x004a 00074 (main.go:20)	RET
	0x004b 00075 (main.go:20)	NOP
	0x004b 00075 (main.go:18)	PCDATA	$1, $-1
	0x004b 00075 (main.go:18)	PCDATA	$0, $-2
	0x004b 00075 (main.go:18)	MOVQ	AX, 8(SP)
	0x0050 00080 (main.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x0055 00085 (main.go:18)	MOVQ	8(SP), AX
	0x005a 00090 (main.go:18)	PCDATA	$0, $-1
	0x005a 00090 (main.go:18)	JMP	0
	0x0000 49 3b 66 10 76 45 48 83 ec 08 48 89 2c 24 48 8d  I;f.vEH...H.,$H.
	0x0010 2c 24 48 c7 40 08 05 00 00 00 83 3d 00 00 00 00  ,$H.@......=....
	0x0020 00 75 0c 48 8d 0d 00 00 00 00 48 89 08 eb 0f 48  .u.H......H....H
	0x0030 89 c7 48 8d 0d 00 00 00 00 e8 00 00 00 00 31 c0  ..H...........1.
	0x0040 31 db 48 8b 2c 24 48 83 c4 08 c3 48 89 44 24 08  1.H.,$H....H.D$.
	0x0050 e8 00 00 00 00 48 8b 44 24 08 eb a4              .....H.D$...
	rel 28+4 t=15 runtime.writeBarrier+-1
	rel 38+4 t=15 go.string."hello"+0
	rel 53+4 t=15 go.string."hello"+0
	rel 58+4 t=7 runtime.gcWriteBarrierCX+0
	rel 81+4 t=7 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok size=86 args=0x8 locals=0x10 funcid=0x16
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|WRAPPER|ABIInternal, $16-8
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	52
	0x0006 00006 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0006 00006 (<autogenerated>:1)	SUBQ	$16, SP
	0x000a 00010 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x000f 00015 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x0014 00020 (<autogenerated>:1)	MOVQ	32(R14), R12
	0x0018 00024 (<autogenerated>:1)	TESTQ	R12, R12
	0x001b 00027 (<autogenerated>:1)	JNE	69
	0x001d 00029 (<autogenerated>:1)	NOP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$5, os.(*File).close.arginfo1(SB)
	0x001d 00029 (<autogenerated>:1)	MOVQ	AX, ""..this+24(SP)
	0x0022 00034 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0025 00037 (<autogenerated>:1)	PCDATA	$1, $1
	0x0025 00037 (<autogenerated>:1)	CALL	os.(*file).close(SB)
	0x002a 00042 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x002f 00047 (<autogenerated>:1)	ADDQ	$16, SP
	0x0033 00051 (<autogenerated>:1)	RET
	0x0034 00052 (<autogenerated>:1)	NOP
	0x0034 00052 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0034 00052 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0034 00052 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0039 00057 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x003e 00062 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x0043 00067 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0043 00067 (<autogenerated>:1)	JMP	0
	0x0045 00069 (<autogenerated>:1)	LEAQ	24(SP), R13
	0x004a 00074 (<autogenerated>:1)	CMPQ	(R12), R13
	0x004e 00078 (<autogenerated>:1)	JNE	29
	0x0050 00080 (<autogenerated>:1)	MOVQ	SP, (R12)
	0x0054 00084 (<autogenerated>:1)	JMP	29
	0x0000 49 3b 66 10 76 2e 48 83 ec 10 48 89 6c 24 08 48  I;f.v.H...H.l$.H
	0x0010 8d 6c 24 08 4d 8b 66 20 4d 85 e4 75 28 48 89 44  .l$.M.f M..u(H.D
	0x0020 24 18 48 8b 00 e8 00 00 00 00 48 8b 6c 24 08 48  $.H.......H.l$.H
	0x0030 83 c4 10 c3 48 89 44 24 08 e8 00 00 00 00 48 8b  ....H.D$......H.
	0x0040 44 24 08 eb bb 4c 8d 6c 24 18 4d 39 2c 24 75 cd  D$...L.l$.M9,$u.
	0x0050 49 89 24 24 eb c7                                I.$$..
	rel 38+4 t=7 os.(*file).close+0
	rel 58+4 t=7 runtime.morestack_noctxt+0
os.(*File).isdir STEXT dupok size=86 args=0x8 locals=0x10 funcid=0x16
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).isdir(SB), DUPOK|WRAPPER|ABIInternal, $16-8
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	52
	0x0006 00006 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0006 00006 (<autogenerated>:1)	SUBQ	$16, SP
	0x000a 00010 (<autogenerated>:1)	MOVQ	BP, 8(SP)
	0x000f 00015 (<autogenerated>:1)	LEAQ	8(SP), BP
	0x0014 00020 (<autogenerated>:1)	MOVQ	32(R14), R12
	0x0018 00024 (<autogenerated>:1)	TESTQ	R12, R12
	0x001b 00027 (<autogenerated>:1)	JNE	69
	0x001d 00029 (<autogenerated>:1)	NOP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$5, os.(*File).isdir.arginfo1(SB)
	0x001d 00029 (<autogenerated>:1)	MOVQ	AX, ""..this+24(SP)
	0x0022 00034 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0025 00037 (<autogenerated>:1)	PCDATA	$1, $1
	0x0025 00037 (<autogenerated>:1)	CALL	os.(*file).isdir(SB)
	0x002a 00042 (<autogenerated>:1)	MOVQ	8(SP), BP
	0x002f 00047 (<autogenerated>:1)	ADDQ	$16, SP
	0x0033 00051 (<autogenerated>:1)	RET
	0x0034 00052 (<autogenerated>:1)	NOP
	0x0034 00052 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0034 00052 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0034 00052 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0039 00057 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x003e 00062 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x0043 00067 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0043 00067 (<autogenerated>:1)	JMP	0
	0x0045 00069 (<autogenerated>:1)	LEAQ	24(SP), R13
	0x004a 00074 (<autogenerated>:1)	CMPQ	(R12), R13
	0x004e 00078 (<autogenerated>:1)	JNE	29
	0x0050 00080 (<autogenerated>:1)	MOVQ	SP, (R12)
	0x0054 00084 (<autogenerated>:1)	JMP	29
	0x0000 49 3b 66 10 76 2e 48 83 ec 10 48 89 6c 24 08 48  I;f.v.H...H.l$.H
	0x0010 8d 6c 24 08 4d 8b 66 20 4d 85 e4 75 28 48 89 44  .l$.M.f M..u(H.D
	0x0020 24 18 48 8b 00 e8 00 00 00 00 48 8b 6c 24 08 48  $.H.......H.l$.H
	0x0030 83 c4 10 c3 48 89 44 24 08 e8 00 00 00 00 48 8b  ....H.D$......H.
	0x0040 44 24 08 eb bb 4c 8d 6c 24 18 4d 39 2c 24 75 cd  D$...L.l$.M9,$u.
	0x0050 49 89 24 24 eb c7                                I.$$..
	rel 38+4 t=7 os.(*file).isdir+0
	rel 58+4 t=7 runtime.morestack_noctxt+0
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
	rel 0+0 t=23 type.[]interface {}+0
	rel 0+0 t=23 type.error+0
	rel 0+0 t=23 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
runtime.strequal路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.strequal+0
runtime.memequal64路f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.OneType. SRODATA dupok size=15
	0x0000 01 0d 2a 6d 61 69 6e 2e 4f 6e 65 54 79 70 65     ..*main.OneType
type.*"".OneType SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 fb bc bc 02 08 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.OneType.+0
	rel 48+8 t=1 type."".OneType+0
type..namedata.Name. SRODATA dupok size=6
	0x0000 01 04 4e 61 6d 65                                ..Name
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
type..namedata.*interface {}- SRODATA dupok size=15
	0x0000 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d     ..*interface {}
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
	rel 44+4 t=-32763 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=17
	0x0000 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20 7b  ..*[]interface {
	0x0010 7d                                               }
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
	rel 44+4 t=-32763 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.0a SRODATA dupok size=1
	0x0000 0a                                               .
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=-32767 os.(*File).Write+0
type..importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
gclocals路7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals路545a9885637b5023c1f9ebe404e2a6df SRODATA dupok size=14
	0x0000 03 00 00 00 0a 00 00 00 00 00 04 00 03 00        ..............
"".main.stkobj SRODATA static size=80
	0x0000 03 00 00 00 00 00 00 00 c0 ff ff ff 10 00 00 00  ................
	0x0010 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 d0 ff ff ff 10 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 e0 ff ff ff 20 00 00 00  ............ ...
	0x0040 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	rel 24+8 t=1 runtime.gcbits.01+0
	rel 48+8 t=1 runtime.gcbits.01+0
	rel 72+8 t=1 runtime.gcbits.0a+0
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
"".SetOneType.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
os.(*File).close.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
os.(*File).isdir.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
