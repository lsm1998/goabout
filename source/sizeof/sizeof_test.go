package sizeof

import (
	"fmt"
	"testing"
	"unsafe"
)

type T1 struct {
	A int32
	B int32
}

type T2 struct {
	A int16
	B int32
}

type T3 struct {
	A int16
	B string
}

func TestSizeof(t *testing.T) {
	fmt.Println("对其系数=", unsafe.Alignof(T1{}))
	fmt.Println(unsafe.Sizeof(T1{}))
	fmt.Println(unsafe.Sizeof(T2{}))
	fmt.Println(unsafe.Sizeof(T3{}))
}
