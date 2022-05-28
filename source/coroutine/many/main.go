package main

import (
	"fmt"
	"math"
	"time"
)

func Println(i int) {
	fmt.Println(i)
	time.Sleep(time.Second)
}

func main() {
	// panic: too many concurrent operations on a single file or socket (max 1048575)
	// 文件打开数限制
	// 内存限制
	// 调度开销过大
	for i := 0; i < math.MaxInt; i++ {
		go Println(i)
	}
	time.Sleep(time.Hour)
}
