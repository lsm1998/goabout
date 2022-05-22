package sizeof

import (
	"fmt"
	"testing"
	"unsafe"
)

type E1 struct {
	A int8
	B struct{}
	C int16
}

type E2 struct {
	A int8
	C int16
	B struct{} // 空结构体在最后需要补齐，防止和其他变量共用内存地址，便于GC
}

type E3 struct {
	B struct{} // 空结构体在最前不需要补齐
	A int8
	C int16
}

type User struct {
	A int32
	B []int32
	C string
	D bool
	E struct{}
}

func TestEmpty(t *testing.T) {
	fmt.Println(unsafe.Sizeof(E1{}))
	fmt.Println(unsafe.Sizeof(E2{}))
	fmt.Println(unsafe.Sizeof(E3{}))

	fmt.Println(unsafe.Alignof(User{}))
	fmt.Println(unsafe.Sizeof(User{}))
}
