package slices

import (
	"fmt"
	"testing"
	"unsafe"
)

/**
golang切片底层结构
type SliceHeader struct {
    Data uintptr
    Len int
    Cap int
}
*/

func TestNewMake(t *testing.T) {
	// new创建的切片底层Data为nil
	// new创建返回的是切片的指针
	arr1 := new([]int32)
	fmt.Println(unsafe.Sizeof(*arr1))

	arr2 := make([]int32, 0)
	fmt.Println(unsafe.Sizeof(arr2))
}
