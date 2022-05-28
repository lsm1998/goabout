package day02

import (
	"fmt"
	"testing"
)

func getSum(a, b int) int {
	if a == 0 {
		return b
	}
	if b == 0 {
		return a
	}
	var lower int
	var carrier int
	for true {
		lower = a ^ b   // 计算低位
		carrier = a & b // 计算进位
		if carrier == 0 {
			break
		}
		a = lower
		b = carrier << 1
	}
	return lower
}

func TestGetSum(t *testing.T) {
	fmt.Println(getSum(-1, 2))
}
