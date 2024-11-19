package main

import (
	"fmt"
	"time"
)

// 查看golang编译过程
// linux & mac
// sudo GOSSAFUNC=main go build main.go
// windows
// $env:GOSSAFUNC="main"
// go build
// main
func main() {
	a := TestFunc(3)
	fmt.Println(a)

	date := time.Date(-1000, 1, 1, 0, 0, 0, 0, time.UTC)
	fmt.Println(date)
	fmt.Println(date.Unix())
}

func TestFunc(a int) int {
	b := a * 3
	return b
}

// 查看plan9汇编
// go build -gcflags -S main.go
