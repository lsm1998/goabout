package main

import (
	"nginx/core"
	"os"
)

// pid
var pid int

// ppid
var ppid int

func main() {
	core.GlobalConfig.Init()

	pid = os.Getpid()
	ppid = os.Getppid()

	core.NgxLogInit("logs")
	core.NgxEventInit(":9000")
}
