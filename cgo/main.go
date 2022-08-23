package main

import (
	"cgo/libs"
	"fmt"
	"time"
)

func main() {
	fmt.Println(libs.Sum(1, 1))

	for {
		time.Sleep(30)
		fmt.Println(libs.SayHello("lsm"))
	}
}
