package main

import (
	"fmt"
	"unsafe"
)

type Empty struct {
}

type Compose struct {
	E      Empty
	Number int32
}

func main() {
	// 空结构地址分配在统一的zerobase
	var e1 = Empty{}
	var e2 = Empty{}
	var b1 bool
	var b2 bool
	fmt.Println(unsafe.Sizeof(e1))
	fmt.Println(unsafe.Sizeof(b1))
	fmt.Printf("%p %p %p %p\n", &e1, &e2, &b1, &b2)

	var c = Compose{}
	fmt.Println(unsafe.Sizeof(c))
	fmt.Printf("%p %p\n", &c.E, &c.Number)
}
