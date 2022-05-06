package day01

import (
	"bytes"
	"fmt"
	"testing"
)

/**
打印一个int32数字的二进制
*/

func reverse(s string) string {
	a := []rune(s)
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		a[i], a[j] = a[j], a[i]
	}
	return string(a)
}

func PrintBinaryInt32(num int32) {
	/**
	此处负数有bug
	*/
	buffer := bytes.Buffer{}
	for i := 0; i < 32; i++ {
		if num > 0 && num%2 == 1 {
			buffer.WriteString("1")
		} else {
			buffer.WriteString("0")
		}
		num = num / 2
	}
	fmt.Printf("%s\n", reverse(buffer.String()))
}

func PrintBinaryInt32V2(num int32) {
	for i := 31; i >= 0; i-- {
		if num&(1<<i) == 0 {
			fmt.Printf("0")
		} else {
			fmt.Printf("1")
		}
	}
	fmt.Println()
}

func TestPrintBinaryInt32(t *testing.T) {
	PrintBinaryInt32(10)
	PrintBinaryInt32(11)
	PrintBinaryInt32(-1)
	PrintBinaryInt32V2(10)
	PrintBinaryInt32V2(11)
	PrintBinaryInt32V2(-1)
}
