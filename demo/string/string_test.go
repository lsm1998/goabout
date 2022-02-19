package string

import (
	"fmt"
	"reflect"
	"testing"
	"unsafe"
)

func TestString(t *testing.T) {
	getStrLen()

	string2BytesV1("hello")
	string2BytesV2("hello")
}

/**
golang string底层结构
type StringHeader struct {
    Data uintptr
    Len  int
}
*/

func getStrLen() {
	str := "hello 世界"
	u := uintptr(unsafe.Pointer(&str))
	var strLen = (*int)(unsafe.Pointer(u + 8))
	fmt.Println("长度=", *strLen)
	fmt.Println("长度=", len(str))
	valueOf := reflect.ValueOf(str)
	fmt.Println(valueOf.String())
}

func string2BytesV1(str string) []byte {
	result := []byte(str)
	//fmt.Printf("result addr=%p,string addr=%p \n", result, &str)
	return result
}

func string2BytesV2(str string) []byte {
	x := (*[2]uintptr)(unsafe.Pointer(&str))
	h := [3]uintptr{x[0], x[1], x[1]}
	result := *(*[]byte)(unsafe.Pointer(&h))
	//fmt.Printf("result addr=%p,string addr=%p \n", result, &str)
	return result
}

func BenchmarkV1(b *testing.B) {
	// BenchmarkV1-6   	214453714	         5.613 ns/op
	for i := 0; i < b.N; i++ {
		string2BytesV1("hello")
	}
}

func BenchmarkV2(b *testing.B) {
	// BenchmarkV2-6   	1000000000	         0.2653 ns/op
	for i := 0; i < b.N; i++ {
		string2BytesV2("hello")
	}
}
