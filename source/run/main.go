package main

import (
	"fmt"
	"github.com/Jeffail/tunny"
)

/**
golang程序的入口
runtime/rt0_${操作系统}_${CPU架构}.s	例如：runtime/rt0_windows_arm64.s

asm_${CPU架构}.s runtime·rt0_go 函数代码片段
CALL	runtime·check(SB)  // 运行时环境检查，包括各种类型长度、指针操作、结构体字段偏移量等

MOVL	16(SP), AX		// copy argc
MOVL	AX, 0(SP)
MOVQ	24(SP), AX		// copy argv
MOVQ	AX, 8(SP)
CALL	runtime·args(SB) // args参数拷贝到go程序内存
CALL	runtime·osinit(SB) // 判断CPU核心等，用作调度器初始化
CALL	runtime·schedinit(SB) // 调度器初始化

// create a new goroutine to start program
MOVQ	$runtime·mainPC(SB), AX		// entry
PUSHQ	AX
PUSHQ	$0			// arg size
CALL	runtime·newproc(SB) // 创建主协程
// start this M
CALL	runtime·mstart(SB)

CALL	runtime·abort(SB)	// mstart should never return
RET

// Prevent dead-code elimination of debugCallV2, which is
// intended to be called by debuggers.
MOVQ	$runtime·debugCallV2<ABIInternal>(SB), AX
RET

// mainPC is a function value for runtime.main, to be passed to newproc.
// The reference to runtime.main is made via ABIInternal, since the
// actual function (not the ABI0 wrapper) is needed by newproc.
DATA	runtime·mainPC+0(SB)/8,$runtime·main<ABIInternal>(SB)
GLOBL	runtime·mainPC(SB),RODATA,$8
*/
func main() {
	pool := tunny.Pool{}
	defer pool.Close()
	fmt.Println("hello")
}
