package _chan

import (
	"fmt"
	"testing"
)

func TestClose(t *testing.T) {
	defer func() {
		if err := recover(); err != nil {
			fmt.Println("panic!", err)
		}
	}()

	var c = make(chan int, 10)
	close(c)

	val, ok := <-c
	fmt.Println("val => ", val, " ok => ", ok)

	// 重复关闭 panic
	close(c)
}
