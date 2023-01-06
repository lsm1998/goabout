package main

import (
	"nginx/core"
	"nginx/logs"
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

	logs.NgxLogInit("logs")

	logs.Access("go-nginx start,pid=%d,ppid=%d", pid, ppid)
	core.NgxEventInit(":9000")
}
