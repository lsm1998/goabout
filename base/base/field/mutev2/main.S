"".main STEXT size=255 args=0x0 locals=0x88 funcid=0x0
	0x0000 00000 (main.go:8)	TEXT	"".main(SB), ABIInternal, $136-0
	0x0000 00000 (main.go:8)	MOVQ	TLS, CX
	0x0009 00009 (main.go:8)	PCDATA	$0, $-2
	0x0009 00009 (main.go:8)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:8)	PCDATA	$0, $-1
	0x0010 00016 (main.go:8)	LEAQ	-8(SP), AX
	0x0015 00021 (main.go:8)	CMPQ	AX, 16(CX)
	0x0019 00025 (main.go:8)	PCDATA	$0, $-2
	0x0019 00025 (main.go:8)	JLS	245
	0x001f 00031 (main.go:8)	PCDATA	$0, $-1
	0x001f 00031 (main.go:8)	SUBQ	$136, SP
	0x0026 00038 (main.go:8)	MOVQ	BP, 128(SP)
	0x002e 00046 (main.go:8)	LEAQ	128(SP), BP
	0x0036 00054 (main.go:8)	FUNCDATA	$0, gclocals路33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0036 00054 (main.go:8)	FUNCDATA	$1, gclocals路1d0ed49f611d7e40a62328b5976a2ede(SB)
	0x0036 00054 (main.go:8)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0036 00054 (main.go:9)	XORPS	X0, X0
	0x0039 00057 (main.go:9)	MOVUPS	X0, "".muteType+80(SP)
	0x003e 00062 (main.go:9)	MOVL	$0, "".muteType+96(SP)
	0x0046 00070 (main.go:10)	XCHGL	AX, AX
	0x0047 00071 (main.go:22)	LEAQ	go.string."hello"(SB), AX
	0x004e 00078 (main.go:22)	MOVQ	AX, "".muteType+80(SP)
	0x0053 00083 (main.go:22)	MOVQ	$5, "".muteType+88(SP)
	0x005c 00092 (main.go:11)	MOVL	"".muteType+96(SP), CX
	0x0060 00096 (main.go:11)	MOVQ	AX, ""..autotmp_9+104(SP)
	0x0065 00101 (main.go:11)	MOVQ	$5, ""..autotmp_9+112(SP)
	0x006e 00110 (main.go:11)	MOVL	CX, ""..autotmp_9+120(SP)
	0x0072 00114 (main.go:11)	LEAQ	type."".MuteType(SB), AX
	0x0079 00121 (main.go:11)	MOVQ	AX, (SP)
	0x007d 00125 (main.go:11)	LEAQ	""..autotmp_9+104(SP), AX
	0x0082 00130 (main.go:11)	MOVQ	AX, 8(SP)
	0x0087 00135 (main.go:11)	PCDATA	$1, $0
	0x0087 00135 (main.go:11)	CALL	runtime.convT2E(SB)
	0x008c 00140 (main.go:11)	MOVQ	16(SP), AX
	0x0091 00145 (main.go:11)	MOVQ	24(SP), CX
	0x0096 00150 (main.go:11)	XORPS	X0, X0
	0x0099 00153 (main.go:11)	MOVUPS	X0, ""..autotmp_16+64(SP)
	0x009e 00158 (main.go:11)	MOVQ	AX, ""..autotmp_16+64(SP)
	0x00a3 00163 (main.go:11)	MOVQ	CX, ""..autotmp_16+72(SP)
	0x00a8 00168 (<unknown line number>)	NOP
	0x00a8 00168 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), AX
	0x00af 00175 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), CX
	0x00b6 00182 ($GOROOT\src\fmt\print.go:274)	MOVQ	CX, (SP)
	0x00ba 00186 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 8(SP)
	0x00bf 00191 ($GOROOT\src\fmt\print.go:274)	LEAQ	""..autotmp_16+64(SP), AX
	0x00c4 00196 ($GOROOT\src\fmt\print.go:274)	MOVQ	AX, 16(SP)
	0x00c9 00201 ($GOROOT\src\fmt\print.go:274)	MOVQ	$1, 24(SP)
	0x00d2 00210 ($GOROOT\src\fmt\print.go:274)	MOVQ	$1, 32(SP)
	0x00db 00219 ($GOROOT\src\fmt\print.go:274)	NOP
	0x00e0 00224 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x00e5 00229 (main.go:11)	MOVQ	128(SP), BP
	0x00ed 00237 (main.go:11)	ADDQ	$136, SP
	0x00f4 00244 (main.go:11)	RET
	0x00f5 00245 (main.go:11)	NOP
	0x00f5 00245 (main.go:8)	PCDATA	$1, $-1
	0x00f5 00245 (main.go:8)	PCDATA	$0, $-2
	0x00f5 00245 (main.go:8)	CALL	runtime.morestack_noctxt(SB)
	0x00fa 00250 (main.go:8)	PCDATA	$0, $-1
	0x00fa 00250 (main.go:8)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 8d 44 24 f8 48 3b 41 10 0f 86 d6 00 00 00 48  H.D$.H;A.......H
	0x0020 81 ec 88 00 00 00 48 89 ac 24 80 00 00 00 48 8d  ......H..$....H.
	0x0030 ac 24 80 00 00 00 0f 57 c0 0f 11 44 24 50 c7 44  .$.....W...D$P.D
	0x0040 24 60 00 00 00 00 90 48 8d 05 00 00 00 00 48 89  $`.....H......H.
	0x0050 44 24 50 48 c7 44 24 58 05 00 00 00 8b 4c 24 60  D$PH.D$X.....L$`
	0x0060 48 89 44 24 68 48 c7 44 24 70 05 00 00 00 89 4c  H.D$hH.D$p.....L
	0x0070 24 78 48 8d 05 00 00 00 00 48 89 04 24 48 8d 44  $xH......H..$H.D
	0x0080 24 68 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24  $hH.D$......H.D$
	0x0090 10 48 8b 4c 24 18 0f 57 c0 0f 11 44 24 40 48 89  .H.L$..W...D$@H.
	0x00a0 44 24 40 48 89 4c 24 48 48 8b 05 00 00 00 00 48  D$@H.L$HH......H
	0x00b0 8d 0d 00 00 00 00 48 89 0c 24 48 89 44 24 08 48  ......H..$H.D$.H
	0x00c0 8d 44 24 40 48 89 44 24 10 48 c7 44 24 18 01 00  .D$@H.D$.H.D$...
	0x00d0 00 00 48 c7 44 24 20 01 00 00 00 0f 1f 44 00 00  ..H.D$ ......D..
	0x00e0 e8 00 00 00 00 48 8b ac 24 80 00 00 00 48 81 c4  .....H..$....H..
	0x00f0 88 00 00 00 c3 e8 00 00 00 00 e9 01 ff ff ff     ...............
	rel 3+0 t=25 type."".MuteType+0
	rel 3+0 t=25 type.*os.File+0
	rel 12+4 t=17 TLS+0
	rel 74+4 t=16 go.string."hello"+0
	rel 117+4 t=16 type."".MuteType+0
	rel 136+4 t=8 runtime.convT2E+0
	rel 171+4 t=16 os.Stdout+0
	rel 178+4 t=16 go.itab.*os.File,io.Writer+0
	rel 225+4 t=8 fmt.Fprintln+0
	rel 246+4 t=8 runtime.morestack_noctxt+0
"".SetMuteType STEXT size=105 args=0x18 locals=0x8 funcid=0x0
	0x0000 00000 (main.go:21)	TEXT	"".SetMuteType(SB), ABIInternal, $8-24
	0x0000 00000 (main.go:21)	MOVQ	TLS, CX
	0x0009 00009 (main.go:21)	PCDATA	$0, $-2
	0x0009 00009 (main.go:21)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (main.go:21)	PCDATA	$0, $-1
	0x0010 00016 (main.go:21)	CMPQ	SP, 16(CX)
	0x0014 00020 (main.go:21)	PCDATA	$0, $-2
	0x0014 00020 (main.go:21)	JLS	98
	0x0016 00022 (main.go:21)	PCDATA	$0, $-1
	0x0016 00022 (main.go:21)	SUBQ	$8, SP
	0x001a 00026 (main.go:21)	MOVQ	BP, (SP)
	0x001e 00030 (main.go:21)	LEAQ	(SP), BP
	0x0022 00034 (main.go:21)	FUNCDATA	$0, gclocals路e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0022 00034 (main.go:21)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0022 00034 (main.go:22)	MOVQ	"".muteType+16(SP), DI
	0x0027 00039 (main.go:22)	MOVQ	$5, 8(DI)
	0x002f 00047 (main.go:22)	PCDATA	$0, $-2
	0x002f 00047 (main.go:22)	CMPL	runtime.writeBarrier(SB), $0
	0x0036 00054 (main.go:22)	JNE	83
	0x0038 00056 (main.go:22)	LEAQ	go.string."hello"(SB), AX
	0x003f 00063 (main.go:22)	MOVQ	AX, (DI)
	0x0042 00066 (main.go:23)	PCDATA	$0, $-1
	0x0042 00066 (main.go:23)	XORPS	X0, X0
	0x0045 00069 (main.go:23)	MOVUPS	X0, "".~r1+24(SP)
	0x004a 00074 (main.go:23)	MOVQ	(SP), BP
	0x004e 00078 (main.go:23)	ADDQ	$8, SP
	0x0052 00082 (main.go:23)	RET
	0x0053 00083 (main.go:22)	PCDATA	$0, $-2
	0x0053 00083 (main.go:22)	LEAQ	go.string."hello"(SB), AX
	0x005a 00090 (main.go:22)	CALL	runtime.gcWriteBarrier(SB)
	0x005f 00095 (main.go:22)	NOP
	0x0060 00096 (main.go:22)	JMP	66
	0x0062 00098 (main.go:22)	NOP
	0x0062 00098 (main.go:21)	PCDATA	$1, $-1
	0x0062 00098 (main.go:21)	PCDATA	$0, $-2
	0x0062 00098 (main.go:21)	CALL	runtime.morestack_noctxt(SB)
	0x0067 00103 (main.go:21)	PCDATA	$0, $-1
	0x0067 00103 (main.go:21)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 4c 48 83 ec 08 48 89 2c 24 48 8d  H;a.vLH...H.,$H.
	0x0020 2c 24 48 8b 7c 24 10 48 c7 47 08 05 00 00 00 83  ,$H.|$.H.G......
	0x0030 3d 00 00 00 00 00 75 1b 48 8d 05 00 00 00 00 48  =.....u.H......H
	0x0040 89 07 0f 57 c0 0f 11 44 24 18 48 8b 2c 24 48 83  ...W...D$.H.,$H.
	0x0050 c4 08 c3 48 8d 05 00 00 00 00 e8 00 00 00 00 90  ...H............
	0x0060 eb e0 e8 00 00 00 00 eb 97                       .........
	rel 12+4 t=17 TLS+0
	rel 49+4 t=16 runtime.writeBarrier+-1
	rel 59+4 t=16 go.string."hello"+0
	rel 86+4 t=16 go.string."hello"+0
	rel 91+4 t=8 runtime.gcWriteBarrier+0
	rel 99+4 t=8 runtime.morestack_noctxt+0
os.(*File).close STEXT dupok nosplit size=26 args=0x18 locals=0x0 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals路e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x0005 00005 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0008 00008 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x000d 00013 (<autogenerated>:1)	XORPS	X0, X0
	0x0010 00016 (<autogenerated>:1)	MOVUPS	X0, "".~r0+16(SP)
	0x0015 00021 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 48 8b 44 24 08 48 8b 00 48 89 44 24 08 0f 57 c0  H.D$.H..H.D$..W.
	0x0010 0f 11 44 24 10 e9 00 00 00 00                    ..D$......
	rel 22+4 t=8 os.(*file).close+0
os.(*File).isdir STEXT dupok nosplit size=23 args=0x10 locals=0x0 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).isdir(SB), DUPOK|NOSPLIT|ABIInternal, $0-16
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x0005 00005 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0008 00008 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x000d 00013 (<autogenerated>:1)	MOVB	$0, "".~r0+16(SP)
	0x0012 00018 (<autogenerated>:1)	JMP	os.(*file).isdir(SB)
	0x0000 48 8b 44 24 08 48 8b 00 48 89 44 24 08 c6 44 24  H.D$.H..H.D$..D$
	0x0010 10 00 e9 00 00 00 00                             .......
	rel 19+4 t=8 os.(*file).isdir+0
type..eq."".MuteType STEXT dupok size=119 args=0x18 locals=0x28 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".MuteType(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	TLS, CX
	0x0009 00009 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0009 00009 (<autogenerated>:1)	MOVQ	(CX)(TLS*2), CX
	0x0010 00016 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0010 00016 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x0014 00020 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0014 00020 (<autogenerated>:1)	JLS	112
	0x0016 00022 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0016 00022 (<autogenerated>:1)	SUBQ	$40, SP
	0x001a 00026 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x001f 00031 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x0024 00036 (<autogenerated>:1)	FUNCDATA	$0, gclocals路dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x0024 00036 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0024 00036 (<autogenerated>:1)	MOVQ	"".p+48(SP), AX
	0x0029 00041 (<autogenerated>:1)	MOVQ	8(AX), CX
	0x002d 00045 (<autogenerated>:1)	MOVQ	"".q+56(SP), DX
	0x0032 00050 (<autogenerated>:1)	MOVQ	(DX), BX
	0x0035 00053 (<autogenerated>:1)	MOVQ	(AX), SI
	0x0038 00056 (<autogenerated>:1)	CMPQ	8(DX), CX
	0x003c 00060 (<autogenerated>:1)	JNE	70
	0x003e 00062 (<autogenerated>:1)	MOVL	16(DX), DX
	0x0041 00065 (<autogenerated>:1)	CMPL	16(AX), DX
	0x0044 00068 (<autogenerated>:1)	JEQ	86
	0x0046 00070 (<autogenerated>:1)	XORL	AX, AX
	0x0048 00072 (<autogenerated>:1)	MOVB	AL, "".r+64(SP)
	0x004c 00076 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0051 00081 (<autogenerated>:1)	ADDQ	$40, SP
	0x0055 00085 (<autogenerated>:1)	RET
	0x0056 00086 (<autogenerated>:1)	MOVQ	SI, (SP)
	0x005a 00090 (<autogenerated>:1)	MOVQ	BX, 8(SP)
	0x005f 00095 (<autogenerated>:1)	MOVQ	CX, 16(SP)
	0x0064 00100 (<autogenerated>:1)	PCDATA	$1, $1
	0x0064 00100 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x0069 00105 (<autogenerated>:1)	MOVBLZX	24(SP), AX
	0x006e 00110 (<autogenerated>:1)	JMP	72
	0x0070 00112 (<autogenerated>:1)	NOP
	0x0070 00112 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0070 00112 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0070 00112 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0075 00117 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0075 00117 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 28 00 00 00 48 8b 89 00 00 00 00  eH..%(...H......
	0x0010 48 3b 61 10 76 5a 48 83 ec 28 48 89 6c 24 20 48  H;a.vZH..(H.l$ H
	0x0020 8d 6c 24 20 48 8b 44 24 30 48 8b 48 08 48 8b 54  .l$ H.D$0H.H.H.T
	0x0030 24 38 48 8b 1a 48 8b 30 48 39 4a 08 75 08 8b 52  $8H..H.0H9J.u..R
	0x0040 10 39 50 10 74 10 31 c0 88 44 24 40 48 8b 6c 24  .9P.t.1..D$@H.l$
	0x0050 20 48 83 c4 28 c3 48 89 34 24 48 89 5c 24 08 48   H..(.H.4$H.\$.H
	0x0060 89 4c 24 10 e8 00 00 00 00 0f b6 44 24 18 eb d8  .L$........D$...
	0x0070 e8 00 00 00 00 eb 89                             .......
	rel 12+4 t=17 TLS+0
	rel 101+4 t=8 runtime.memequal+0
	rel 113+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
go.info."".SetMuteType$abstract SDWARFABSFCN dupok size=32
	0x0000 04 2e 53 65 74 4d 75 74 65 54 79 70 65 00 01 01  ..SetMuteType...
	0x0010 11 6d 75 74 65 54 79 70 65 00 00 00 00 00 00 00  .muteType.......
	rel 0+0 t=24 type.*"".MuteType+0
	rel 0+0 t=24 type.error+0
	rel 27+4 t=31 go.info.*"".MuteType+0
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
go.string."hello" SRODATA dupok size=5
	0x0000 68 65 6c 6c 6f                                   hello
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
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=1 os.(*File).Write+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
gclocals路33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals路1d0ed49f611d7e40a62328b5976a2ede SRODATA dupok size=9
	0x0000 01 00 00 00 08 00 00 00 00                       .........
"".main.stkobj SRODATA static size=56
	0x0000 03 00 00 00 00 00 00 00 c0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00 d0 ff ff ff ff ff ff ff  ................
	0x0020 00 00 00 00 00 00 00 00 e8 ff ff ff ff ff ff ff  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
	rel 32+8 t=1 type."".MuteType+0
	rel 48+8 t=1 type."".MuteType+0
gclocals路e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals路dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
