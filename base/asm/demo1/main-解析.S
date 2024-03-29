"".add STEXT nosplit size=35 args=0x20 locals=0x0 funcid=0x0
    // 表明 "".add 是 .text 段
    // "" 会在链接期替换成main（当前包名）
    // NOSPLIT 表示不需要栈扩张
    // $0-32 代表即将分配的栈帧大小为0，调用方传入的参数大小为32
	0x0000 00000 (main.go:3)	TEXT	"".add(SB), NOSPLIT|ABIInternal, $0-32
	// GC 相关
	0x0000 00000 (main.go:3)	FUNCDATA	$0, gclocals路33cdeccccebe80329f1fdbee7f5874cb(SB)
	// GC 相关
	0x0000 00000 (main.go:3)	FUNCDATA	$1, gclocals路33cdeccccebe80329f1fdbee7f5874cb(SB)
	// 将常量0移动到移动栈指针偏移24字节的位置（第一个返回值）
	// "".~r2 无语义上的含义，略过
	0x0000 00000 (main.go:3)	MOVQ	$0, "".~r2+24(SP)
	// 将常量0移动到移动栈指针偏移32字节的位置（第二个返回值）
	// "".~r3 无语义上的含义，略过
	0x0009 00009 (main.go:3)	MOVB	$0, "".~r3+32(SP)
	// 移动栈指针偏移8字节位置的数据到AX寄存器
	0x000e 00014 (main.go:4)	MOVQ	"".a+8(SP), AX
	// 求和栈指针偏移16字节 和 AX寄存器的数据，并将结果存储在AX寄存器
	0x0013 00019 (main.go:4)	ADDQ	"".b+16(SP), AX
	// 移动AX寄存器的值到栈指针偏移24字节位置
	// "".~r2 无语义上的含义，略过
	0x0018 00024 (main.go:4)	MOVQ	AX, "".~r2+24(SP)
	// 将常量1，移动到栈指针偏移32字节的位置
	// "".~r3 无语义上的含义，略过
	0x001d 00029 (main.go:4)	MOVB	$1, "".~r3+32(SP)
	// 函数返回
	0x0022 00034 (main.go:4)	RET
	0x0000 48 c7 44 24 18 00 00 00 00 c6 44 24 20 00 48 8b  H.D$......D$ .H.
	0x0010 44 24 08 48 03 44 24 10 48 89 44 24 18 c6 44 24  D$.H.D$.H.D$..D$
	0x0020 20 01 c3                                          ..
"".main STEXT nosplit size=68 args=0x0 locals=0x30 funcid=0x0
    // 表明 "".main 是 .text 段
    // "" 会在链接期替换成main（当前包名）
    // NOSPLIT 表示不需要栈扩张
    // $48-0 代表即将分配的栈帧大小为48，调用方传入的参数大小为0
	0x0000 00000 (main.go:8)	TEXT	"".main(SB), NOSPLIT|ABIInternal, $48-0
	// 对栈顶指针执行减48
	// 栈是向低地址方向增长，所以减48意思是栈帧大小增加了48个字节
	0x0000 00000 (main.go:8)	SUBQ	$48, SP
	// 将BP寄存器的值移动到栈指针偏移40字节的位置
	// 这是将申请的栈帧48字节的最后8个字节(40(SP)-48(SP))用来存储当前帧指针 BP (这是一个实际存在的寄存器)的值，以支持栈的展开和方便调试
	0x0004 00004 (main.go:8)	MOVQ	BP, 40(SP)
	// LEA 指令是 MOV 指令的变形，
	// LEAQ 指令计算出帧指针的新地址，并将其存储到 BP 寄存器中
	0x0009 00009 (main.go:8)	LEAQ	40(SP), BP
	// GC 相关
	0x000e 00014 (main.go:8)	FUNCDATA	$0, gclocals路33cdeccccebe80329f1fdbee7f5874cb(SB)
	// GC 相关
	0x000e 00014 (main.go:8)	FUNCDATA	$1, gclocals路33cdeccccebe80329f1fdbee7f5874cb(SB)
	// 将常量10移动到栈指针偏移24字节的位置
	0x000e 00014 (main.go:9)	MOVQ	$10, "".a+24(SP)
	// 将常量100移动到栈指针偏移16字节的位置
	0x0017 00023 (main.go:9)	MOVQ	$100, "".b+16(SP)
	0x0020 00032 (<unknown line number>)	NOP
	// 将栈指针偏移24字节的数据移动到AX寄存器
	0x0020 00032 (main.go:4)	MOVQ	"".a+24(SP), AX
	// 求和常量100和AX寄存器的值，并存储在AX寄存器
	0x0025 00037 (main.go:4)	ADDQ	$100, AX
	// 将AX寄存器的值移动到栈指针偏移32字节的临时变量autotmp_4上
	// autotmp_4 临时变量
	0x0029 00041 (main.go:9)	MOVQ	AX, ""..autotmp_4+32(SP)
	// 移动AX寄存器的值到栈指针偏移8字节的位置
	0x002e 00046 (main.go:9)	MOVQ	AX, "".~R0+8(SP)
	// 移动常量1到栈指针偏移7字节的位置
	0x0033 00051 (main.go:9)	MOVB	$1, "".~R1+7(SP)
	0x0038 00056 (main.go:9)	JMP	58
	// 移动栈指针偏移40字节的数据到 BP 寄存器中
	0x003a 00058 (main.go:9)	MOVQ	40(SP), BP
	// 求和常量48和栈指针起始位置的值，并存储在栈指针起始位置
	0x003f 00063 (main.go:9)	ADDQ	$48, SP
	// 函数返回
	0x0043 00067 (main.go:9)	RET
	0x0000 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24 28 48 c7  H..0H.l$(H.l$(H.
	0x0010 44 24 18 0a 00 00 00 48 c7 44 24 10 64 00 00 00  D$.....H.D$.d...
	0x0020 48 8b 44 24 18 48 83 c0 64 48 89 44 24 20 48 89  H.D$.H..dH.D$ H.
	0x0030 44 24 08 c6 44 24 07 01 eb 00 48 8b 6c 24 28 48  D$..D$....H.l$(H
	0x0040 83 c4 30 c3                                      ..0.
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
go.info."".add$abstract SDWARFABSFCN dupok size=25
	0x0000 04 2e 61 64 64 00 01 01 11 61 00 00 00 00 00 00  ..add....a......
	0x0010 11 62 00 00 00 00 00 00 00                       .b.......
	rel 0+0 t=24 type.bool+0
	rel 0+0 t=24 type.int64+0
	rel 12+4 t=31 go.info.int64+0
	rel 20+4 t=31 go.info.int64+0
gclocals路33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
