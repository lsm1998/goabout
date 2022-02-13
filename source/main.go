package main

import "fmt"

// 1.set GOSSAFUNC=main
// 2.go build -gcflags -S main.go

// GOSSAFUNC=main go build main.go
func main() {
	a := TestFunc(3)
	fmt.Println(a)
}

func TestFunc(a int) int {
	b := a * 3
	return b
}
