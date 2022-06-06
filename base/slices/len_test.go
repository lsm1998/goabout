package slices

import (
	"fmt"
	"testing"
)

func LenDemo() {
	var array [10]int
	// 切片表达式
	var slice = array[5:6]

	var arr1 = array[:]
	var arr2 = arr1[:]

	arr1[0] = 10
	// 底层是同一个数组指针，也会输出10
	fmt.Println(arr2[0])

	fmt.Printf("%p \n", &array)
	fmt.Printf("%p \n", &slice)
	fmt.Printf("%p \n", &arr1)
	fmt.Printf("%p \n", &arr2)

	fmt.Println(len(slice))
	fmt.Println(cap(slice))
}

func TestLenDemo(t *testing.T) {
	LenDemo()
}
