package _chan

import "testing"

func TestClose(t *testing.T) {
	var c = make(chan int, 10)
	close(c)
	// 重复关闭 panic
	close(c)
}
