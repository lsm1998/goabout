package main

import (
	"cgo/libs"
	"fmt"
	"time"
)

func main() {
	for {
		time.Sleep(30)
		fmt.Println(libs.SayHello("lsm"))
	}
}
