package main

import (
	"nginx/core"
	"nginx/logs"
	"os"
)

func main() {
	core.GlobalConfig.Init()
	core.GlobalConfig.Pid, core.GlobalConfig.Ppid = os.Getpid(), os.Getppid()

	logs.NgxLogInit("logs")

	logs.Access("go-nginx start,pid=%d,ppid=%d", core.GlobalConfig.Pid, core.GlobalConfig.Ppid)
	core.NgxEventInit(":9000")
}
