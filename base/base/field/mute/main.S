"".main STEXT size=197 args=0x0 locals=0x78 funcid=0x0
	0x0000 00000 (main.go:6)	TEXT	"".main(SB), ABIInternal, $120-0
	0x0000 00000 (main.go:6)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:6)	PCDATA	$0, $-2
	0x0004 00004 (main.go:6)	JLS	185
	0x000a 00010 (main.go:6)	PCDATA	$0, $-1
	0x000a 00010 (main.go:6)	SUBQ	$120, SP
	0x000e 00014 (main.go:6)	MOVQ	BP, 112(SP)
	0x0013 00019 (main.go:6)	LEAQ	112(SP), BP
	0x0018 00024 (main.go:6)	FUNCDATA	$0, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$1, gclocals路b9184dd1ef9d9df7f9e3c00538f23cdd(SB)
	0x0018 00024 (main.go:6)	FUNCDATA	$2, "".main.stkobj(SB)
	0x0018 00024 (main.go:7)	MOVUPS	X15, "".muteType+56(SP)
	0x001e 00030 (main.go:7)	MOVL	$0, "".muteType+72(SP)
	0x0026 00038 (<unknown line number>)	NOP
	0x0026 00038 (main.go:24)	LEAQ	go.string."hello"(SB), AX
	0x002d 00045 (main.go:24)	MOVQ	AX, "".muteType+56(SP)
	0x0032 00050 (main.go:24)	MOVQ	$5, "".muteType+64(SP)
	0x003b 00059 (main.go:9)	MOVL	"".muteType+72(SP), CX
	0x003f 00063 (main.go:9)	MOVL	CX, ""..autotmp_27+44(SP)
	0x0043 00067 (<unknown line number>)	NOP
	0x0043 00067 (main.go:20)	MOVL	$5, BX
	0x0048 00072 (main.go:20)	PCDATA	$1, $0
	0x0048 00072 (main.go:20)	CALL	runtime.convTstring(SB)
	0x004d 00077 (main.go:20)	MOVQ	AX, ""..autotmp_28+48(SP)
	0x0052 00082 (main.go:20)	MOVL	""..autotmp_27+44(SP), AX
	0x0056 00086 (main.go:20)	PCDATA	$1, $1
	0x0056 00086 (main.go:20)	CALL	runtime.convT32(SB)
	0x005b 00091 (main.go:20)	LEAQ	""..autotmp_17+80(SP), CX
	0x0060 00096 (main.go:20)	MOVUPS	X15, (CX)
	0x0064 00100 (main.go:20)	LEAQ	""..autotmp_17+96(SP), DX
	0x0069 00105 (main.go:20)	MOVUPS	X15, (DX)
	0x006d 00109 (main.go:20)	LEAQ	type.string(SB), DX
	0x0074 00116 (main.go:20)	MOVQ	DX, ""..autotmp_17+80(SP)
	0x0079 00121 (main.go:20)	MOVQ	""..autotmp_28+48(SP), DX
	0x007e 00126 (main.go:20)	MOVQ	DX, ""..autotmp_17+88(SP)
	0x0083 00131 (main.go:20)	LEAQ	type.int32(SB), DX
	0x008a 00138 (main.go:20)	MOVQ	DX, ""..autotmp_17+96(SP)
	0x008f 00143 (main.go:20)	MOVQ	AX, ""..autotmp_17+104(SP)
	0x0094 00148 (<unknown line number>)	NOP
	0x0094 00148 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), BX
	0x009b 00155 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x00a2 00162 ($GOROOT\src\fmt\print.go:274)	MOVL	$2, DI
	0x00a7 00167 ($GOROOT\src\fmt\print.go:274)	MOVQ	DI, SI
	0x00aa 00170 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $0
	0x00aa 00170 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x00af 00175 (main.go:10)	MOVQ	112(SP), BP
	0x00b4 00180 (main.go:10)	ADDQ	$120, SP
	0x00b8 00184 (main.go:10)	RET
	0x00b9 00185 (main.go:10)	NOP
	0x00b9 00185 (main.go:6)	PCDATA	$1, $-1
	0x00b9 00185 (main.go:6)	PCDATA	$0, $-2
	0x00b9 00185 (main.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x00be 00190 (main.go:6)	PCDATA	$0, $-1
	0x00be 00190 (main.go:6)	NOP
	0x00c0 00192 (main.go:6)	JMP	0
	0x0000 49 3b 66 10 0f 86 af 00 00 00 48 83 ec 78 48 89  I;f.......H..xH.
	0x0010 6c 24 70 48 8d 6c 24 70 44 0f 11 7c 24 38 c7 44  l$pH.l$pD..|$8.D
	0x0020 24 48 00 00 00 00 48 8d 05 00 00 00 00 48 89 44  $H....H......H.D
	0x0030 24 38 48 c7 44 24 40 05 00 00 00 8b 4c 24 48 89  $8H.D$@.....L$H.
	0x0040 4c 24 2c bb 05 00 00 00 e8 00 00 00 00 48 89 44  L$,..........H.D
	0x0050 24 30 8b 44 24 2c e8 00 00 00 00 48 8d 4c 24 50  $0.D$,.....H.L$P
	0x0060 44 0f 11 39 48 8d 54 24 60 44 0f 11 3a 48 8d 15  D..9H.T$`D..:H..
	0x0070 00 00 00 00 48 89 54 24 50 48 8b 54 24 30 48 89  ....H.T$PH.T$0H.
	0x0080 54 24 58 48 8d 15 00 00 00 00 48 89 54 24 60 48  T$XH......H.T$`H
	0x0090 89 44 24 68 48 8b 1d 00 00 00 00 48 8d 05 00 00  .D$hH......H....
	0x00a0 00 00 bf 02 00 00 00 48 89 fe e8 00 00 00 00 48  .......H.......H
	0x00b0 8b 6c 24 70 48 83 c4 78 c3 e8 00 00 00 00 66 90  .l$pH..x......f.
	0x00c0 e9 3b ff ff ff                                   .;...
	rel 3+0 t=24 type.string+0
	rel 3+0 t=24 type.int32+0
	rel 3+0 t=24 type.*os.File+0
	rel 41+4 t=15 go.string."hello"+0
	rel 73+4 t=7 runtime.convTstring+0
	rel 87+4 t=7 runtime.convT32+0
	rel 112+4 t=15 type.string+0
	rel 134+4 t=15 type.int32+0
	rel 151+4 t=15 os.Stdout+0
	rel 158+4 t=15 go.itab.*os.File,io.Writer+0
	rel 171+4 t=7 fmt.Fprintln+0
	rel 186+4 t=7 runtime.morestack_noctxt+0
"".outMuch STEXT size=204 args=0x28 locals=0x60 funcid=0x0
	0x0000 00000 (main.go:19)	TEXT	"".outMuch(SB), ABIInternal, $96-40
	0x0000 00000 (main.go:19)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:19)	PCDATA	$0, $-2
	0x0004 00004 (main.go:19)	JLS	146
	0x000a 00010 (main.go:19)	PCDATA	$0, $-1
	0x000a 00010 (main.go:19)	SUBQ	$96, SP
	0x000e 00014 (main.go:19)	MOVQ	BP, 88(SP)
	0x0013 00019 (main.go:19)	LEAQ	88(SP), BP
	0x0018 00024 (main.go:19)	MOVQ	AX, "".demo+104(FP)
	0x001d 00029 (main.go:19)	FUNCDATA	$0, gclocals路d03b527c99fd41043f5ae46e06206c41(SB)
	0x001d 00029 (main.go:19)	FUNCDATA	$1, gclocals路390d02d15ad92b92eed10dfce18bfdc7(SB)
	0x001d 00029 (main.go:19)	FUNCDATA	$2, "".outMuch.stkobj(SB)
	0x001d 00029 (main.go:19)	FUNCDATA	$5, "".outMuch.arginfo1(SB)
	0x001d 00029 (main.go:20)	MOVL	CX, ""..autotmp_22+44(SP)
	0x0021 00033 (main.go:20)	PCDATA	$1, $1
	0x0021 00033 (main.go:20)	CALL	runtime.convTstring(SB)
	0x0026 00038 (main.go:20)	MOVQ	AX, ""..autotmp_23+48(SP)
	0x002b 00043 (main.go:20)	MOVL	""..autotmp_22+44(SP), AX
	0x002f 00047 (main.go:20)	PCDATA	$1, $2
	0x002f 00047 (main.go:20)	CALL	runtime.convT32(SB)
	0x0034 00052 (main.go:20)	LEAQ	""..autotmp_14+56(SP), CX
	0x0039 00057 (main.go:20)	MOVUPS	X15, (CX)
	0x003d 00061 (main.go:20)	LEAQ	""..autotmp_14+72(SP), DX
	0x0042 00066 (main.go:20)	MOVUPS	X15, (DX)
	0x0046 00070 (main.go:20)	LEAQ	type.string(SB), DX
	0x004d 00077 (main.go:20)	MOVQ	DX, ""..autotmp_14+56(SP)
	0x0052 00082 (main.go:20)	MOVQ	""..autotmp_23+48(SP), DX
	0x0057 00087 (main.go:20)	MOVQ	DX, ""..autotmp_14+64(SP)
	0x005c 00092 (main.go:20)	LEAQ	type.int32(SB), DX
	0x0063 00099 (main.go:20)	MOVQ	DX, ""..autotmp_14+72(SP)
	0x0068 00104 (main.go:20)	MOVQ	AX, ""..autotmp_14+80(SP)
	0x006d 00109 (<unknown line number>)	NOP
	0x006d 00109 ($GOROOT\src\fmt\print.go:274)	MOVQ	os.Stdout(SB), BX
	0x0074 00116 ($GOROOT\src\fmt\print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x007b 00123 ($GOROOT\src\fmt\print.go:274)	MOVL	$2, DI
	0x0080 00128 ($GOROOT\src\fmt\print.go:274)	MOVQ	DI, SI
	0x0083 00131 ($GOROOT\src\fmt\print.go:274)	PCDATA	$1, $1
	0x0083 00131 ($GOROOT\src\fmt\print.go:274)	CALL	fmt.Fprintln(SB)
	0x0088 00136 (main.go:21)	MOVQ	88(SP), BP
	0x008d 00141 (main.go:21)	ADDQ	$96, SP
	0x0091 00145 (main.go:21)	RET
	0x0092 00146 (main.go:21)	NOP
	0x0092 00146 (main.go:19)	PCDATA	$1, $-1
	0x0092 00146 (main.go:19)	PCDATA	$0, $-2
	0x0092 00146 (main.go:19)	MOVQ	AX, 8(SP)
	0x0097 00151 (main.go:19)	MOVQ	BX, 16(SP)
	0x009c 00156 (main.go:19)	MOVL	CX, 24(SP)
	0x00a0 00160 (main.go:19)	MOVQ	DI, 32(SP)
	0x00a5 00165 (main.go:19)	MOVQ	SI, 40(SP)
	0x00aa 00170 (main.go:19)	CALL	runtime.morestack_noctxt(SB)
	0x00af 00175 (main.go:19)	MOVQ	8(SP), AX
	0x00b4 00180 (main.go:19)	MOVQ	16(SP), BX
	0x00b9 00185 (main.go:19)	MOVL	24(SP), CX
	0x00bd 00189 (main.go:19)	MOVQ	32(SP), DI
	0x00c2 00194 (main.go:19)	MOVQ	40(SP), SI
	0x00c7 00199 (main.go:19)	PCDATA	$0, $-1
	0x00c7 00199 (main.go:19)	JMP	0
	0x0000 49 3b 66 10 0f 86 88 00 00 00 48 83 ec 60 48 89  I;f.......H..`H.
	0x0010 6c 24 58 48 8d 6c 24 58 48 89 44 24 68 89 4c 24  l$XH.l$XH.D$h.L$
	0x0020 2c e8 00 00 00 00 48 89 44 24 30 8b 44 24 2c e8  ,.....H.D$0.D$,.
	0x0030 00 00 00 00 48 8d 4c 24 38 44 0f 11 39 48 8d 54  ....H.L$8D..9H.T
	0x0040 24 48 44 0f 11 3a 48 8d 15 00 00 00 00 48 89 54  $HD..:H......H.T
	0x0050 24 38 48 8b 54 24 30 48 89 54 24 40 48 8d 15 00  $8H.T$0H.T$@H...
	0x0060 00 00 00 48 89 54 24 48 48 89 44 24 50 48 8b 1d  ...H.T$HH.D$PH..
	0x0070 00 00 00 00 48 8d 05 00 00 00 00 bf 02 00 00 00  ....H...........
	0x0080 48 89 fe e8 00 00 00 00 48 8b 6c 24 58 48 83 c4  H.......H.l$XH..
	0x0090 60 c3 48 89 44 24 08 48 89 5c 24 10 89 4c 24 18  `.H.D$.H.\$..L$.
	0x00a0 48 89 7c 24 20 48 89 74 24 28 e8 00 00 00 00 48  H.|$ H.t$(.....H
	0x00b0 8b 44 24 08 48 8b 5c 24 10 8b 4c 24 18 48 8b 7c  .D$.H.\$..L$.H.|
	0x00c0 24 20 48 8b 74 24 28 e9 34 ff ff ff              $ H.t$(.4...
	rel 3+0 t=24 type.string+0
	rel 3+0 t=24 type.int32+0
	rel 3+0 t=24 type.*os.File+0
	rel 34+4 t=7 runtime.convTstring+0
	rel 48+4 t=7 runtime.convT32+0
	rel 73+4 t=15 type.string+0
	rel 95+4 t=15 type.int32+0
	rel 112+4 t=15 os.Stdout+0
	rel 119+4 t=15 go.itab.*os.File,io.Writer+0
	rel 132+4 t=7 fmt.Fprintln+0
	rel 171+4 t=7 runtime.morestack_noctxt+0
"".SetMuteType STEXT size=92 args=0x8 locals=0x8 funcid=0x0
	0x0000 00000 (main.go:23)	TEXT	"".SetMuteType(SB), ABIInternal, $8-8
	0x0000 00000 (main.go:23)	CMPQ	SP, 16(R14)
	0x0004 00004 (main.go:23)	PCDATA	$0, $-2
	0x0004 00004 (main.go:23)	JLS	75
	0x0006 00006 (main.go:23)	PCDATA	$0, $-1
	0x0006 00006 (main.go:23)	SUBQ	$8, SP
	0x000a 00010 (main.go:23)	MOVQ	BP, (SP)
	0x000e 00014 (main.go:23)	LEAQ	(SP), BP
	0x0012 00018 (main.go:23)	FUNCDATA	$0, gclocals路1a65e721a2ccc325b382662e7ffee780(SB)
	0x0012 00018 (main.go:23)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0012 00018 (main.go:23)	FUNCDATA	$5, "".SetMuteType.arginfo1(SB)
	0x0012 00018 (main.go:24)	MOVQ	$5, 8(AX)
	0x001a 00026 (main.go:24)	PCDATA	$0, $-2
	0x001a 00026 (main.go:24)	CMPL	runtime.writeBarrier(SB), $0
	0x0021 00033 (main.go:24)	JNE	47
	0x0023 00035 (main.go:24)	LEAQ	go.string."hello"(SB), CX
	0x002a 00042 (main.go:24)	MOVQ	CX, (AX)
	0x002d 00045 (main.go:24)	JMP	62
	0x002f 00047 (main.go:24)	MOVQ	AX, DI
	0x0032 00050 (main.go:24)	LEAQ	go.string."hello"(SB), CX
	0x0039 00057 (main.go:24)	CALL	runtime.gcWriteBarrierCX(SB)
	0x003e 00062 (main.go:25)	PCDATA	$0, $-1
	0x003e 00062 (main.go:25)	XORL	AX, AX
	0x0040 00064 (main.go:25)	XORL	BX, BX
	0x0042 00066 (main.go:25)	MOVQ	(SP), BP
	0x0046 00070 (main.go:25)	ADDQ	$8, SP
	0x004a 00074 (main.go:25)	RET
	0x004b 00075 (main.go:25)	NOP
	0x004b 00075 (main.go:23)	PCDATA	$1, $-1
	0x004b 00075 (main.go:23)	PCDATA	$0, $-2
	0x004b 00075 (main.go:23)	MOVQ	AX, 8(SP)
	0x0050 00080 (main.go:23)	CALL	runtime.morestack_noctxt(SB)
	0x0055 00085 (main.go:23)	MOVQ	8(SP), AX
	0x005a 00090 (main.go:23)	PCDATA	$0, $-1
	0x005a 00090 (main.go:23)	JMP	0
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
type..eq."".MuteType STEXT dupok size=98 args=0x10 locals=0x20 funcid=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".MuteType(SB), DUPOK|ABIInternal, $32-16
	0x0000 00000 (<autogenerated>:1)	CMPQ	SP, 16(R14)
	0x0004 00004 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0004 00004 (<autogenerated>:1)	JLS	71
	0x0006 00006 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0006 00006 (<autogenerated>:1)	SUBQ	$32, SP
	0x000a 00010 (<autogenerated>:1)	MOVQ	BP, 24(SP)
	0x000f 00015 (<autogenerated>:1)	LEAQ	24(SP), BP
	0x0014 00020 (<autogenerated>:1)	FUNCDATA	$0, gclocals路dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x0014 00020 (<autogenerated>:1)	FUNCDATA	$1, gclocals路69c1753bd5f81501d95132d08af04464(SB)
	0x0014 00020 (<autogenerated>:1)	FUNCDATA	$5, type..eq."".MuteType.arginfo1(SB)
	0x0014 00020 (<autogenerated>:1)	MOVQ	8(AX), CX
	0x0018 00024 (<autogenerated>:1)	MOVQ	(BX), DX
	0x001b 00027 (<autogenerated>:1)	MOVQ	(AX), SI
	0x001e 00030 (<autogenerated>:1)	NOP
	0x0020 00032 (<autogenerated>:1)	CMPQ	8(BX), CX
	0x0024 00036 (<autogenerated>:1)	JNE	59
	0x0026 00038 (<autogenerated>:1)	MOVL	16(AX), DI
	0x0029 00041 (<autogenerated>:1)	CMPL	16(BX), DI
	0x002c 00044 (<autogenerated>:1)	JNE	59
	0x002e 00046 (<autogenerated>:1)	MOVQ	SI, AX
	0x0031 00049 (<autogenerated>:1)	MOVQ	DX, BX
	0x0034 00052 (<autogenerated>:1)	PCDATA	$1, $1
	0x0034 00052 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x0039 00057 (<autogenerated>:1)	JMP	61
	0x003b 00059 (<autogenerated>:1)	XORL	AX, AX
	0x003d 00061 (<autogenerated>:1)	PCDATA	$1, $-1
	0x003d 00061 (<autogenerated>:1)	MOVQ	24(SP), BP
	0x0042 00066 (<autogenerated>:1)	ADDQ	$32, SP
	0x0046 00070 (<autogenerated>:1)	RET
	0x0047 00071 (<autogenerated>:1)	NOP
	0x0047 00071 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0047 00071 (<autogenerated>:1)	PCDATA	$0, $-2
	0x0047 00071 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x004c 00076 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x0051 00081 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x0056 00086 (<autogenerated>:1)	MOVQ	8(SP), AX
	0x005b 00091 (<autogenerated>:1)	MOVQ	16(SP), BX
	0x0060 00096 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0060 00096 (<autogenerated>:1)	JMP	0
	0x0000 49 3b 66 10 76 41 48 83 ec 20 48 89 6c 24 18 48  I;f.vAH.. H.l$.H
	0x0010 8d 6c 24 18 48 8b 48 08 48 8b 13 48 8b 30 66 90  .l$.H.H.H..H.0f.
	0x0020 48 39 4b 08 75 15 8b 78 10 39 7b 10 75 0d 48 89  H9K.u..x.9{.u.H.
	0x0030 f0 48 89 d3 e8 00 00 00 00 eb 02 31 c0 48 8b 6c  .H.........1.H.l
	0x0040 24 18 48 83 c4 20 c3 48 89 44 24 08 48 89 5c 24  $.H.. .H.D$.H.\$
	0x0050 10 e8 00 00 00 00 48 8b 44 24 08 48 8b 5c 24 10  ......H.D$.H.\$.
	0x0060 eb 9e                                            ..
	rel 53+4 t=7 runtime.memequal+0
	rel 82+4 t=7 runtime.morestack_noctxt+0
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
go.info."".SetMuteType$abstract SDWARFABSFCN dupok size=32
	0x0000 04 2e 53 65 74 4d 75 74 65 54 79 70 65 00 01 01  ..SetMuteType...
	0x0010 11 6d 75 74 65 54 79 70 65 00 00 00 00 00 00 00  .muteType.......
	rel 0+0 t=23 type.*"".MuteType+0
	rel 0+0 t=23 type.error+0
	rel 27+4 t=31 go.info.*"".MuteType+0
go.info."".outMuch$abstract SDWARFABSFCN dupok size=34
	0x0000 04 2e 6f 75 74 4d 75 63 68 00 01 01 11 64 65 6d  ..outMuch....dem
	0x0010 6f 00 00 00 00 00 00 11 65 72 72 00 00 00 00 00  o.......err.....
	0x0020 00 00                                            ..
	rel 0+0 t=23 type."".MuteType+0
	rel 0+0 t=23 type.error+0
	rel 19+4 t=31 go.info."".MuteType+0
	rel 29+4 t=31 go.info.error+0
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
type..namedata.*main.MuteType. SRODATA dupok size=16
	0x0000 01 0e 2a 6d 61 69 6e 2e 4d 75 74 65 54 79 70 65  ..*main.MuteType
type.*"".MuteType SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 ed c6 30 b5 08 08 08 36 00 00 00 00 00 00 00 00  ..0....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64路f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.MuteType.+0
	rel 48+8 t=1 type."".MuteType+0
type..namedata.Name. SRODATA dupok size=6
	0x0000 01 04 4e 61 6d 65                                ..Name
type..namedata.Age. SRODATA dupok size=5
	0x0000 01 03 41 67 65                                   ..Age
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
gclocals路69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals路b9184dd1ef9d9df7f9e3c00538f23cdd SRODATA dupok size=10
	0x0000 02 00 00 00 08 00 00 00 00 01                    ..........
"".main.stkobj SRODATA static size=56
	0x0000 02 00 00 00 00 00 00 00 c8 ff ff ff 18 00 00 00  ................
	0x0010 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 e0 ff ff ff 20 00 00 00 20 00 00 00 00 00 00 00  .... ... .......
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.gcbits.01+0
	rel 48+8 t=1 runtime.gcbits.0a+0
gclocals路d03b527c99fd41043f5ae46e06206c41 SRODATA dupok size=11
	0x0000 03 00 00 00 05 00 00 00 01 00 00                 ...........
gclocals路390d02d15ad92b92eed10dfce18bfdc7 SRODATA dupok size=11
	0x0000 03 00 00 00 05 00 00 00 00 00 01                 ...........
"".outMuch.stkobj SRODATA static size=32
	0x0000 01 00 00 00 00 00 00 00 e0 ff ff ff 20 00 00 00  ............ ...
	0x0010 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	rel 24+8 t=1 runtime.gcbits.0a+0
"".outMuch.arginfo1 SRODATA static dupok size=17
	0x0000 fe fe 00 08 08 08 fd 10 04 fd fe 18 08 20 08 fd  ............. ..
	0x0010 ff                                               .
gclocals路1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
"".SetMuteType.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
gclocals路dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
type..eq."".MuteType.arginfo1 SRODATA static dupok size=5
	0x0000 00 08 08 08 ff                                   .....
os.(*File).close.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
os.(*File).isdir.arginfo1 SRODATA static dupok size=3
	0x0000 00 08 ff                                         ...
