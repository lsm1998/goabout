package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func main() {
	arr1 := []int{1, 2, 3}
	arr2 := arr1[0:2]
	fmt.Println(cap(arr2))
	// runtime.growslice 切片扩容
	arr2 = append(arr2, 4, 5)
	fmt.Println(cap(arr2))
	arr2[0] = 100
	fmt.Println(arr1)
	fmt.Println(arr2)

	compDataPtr()
}

func compDataPtr() {
	arr1 := []int{1, 2, 3}
	arr2 := arr1[0:2]
	arr3 := arr1[1:2]

	// 数组截断原理，如果从0开始截断，则复用data指针
	// 如果不从0开始，则data指针按照偏移直接后移动
	// 截断后的data指针地址 = old_data_ptr + (start_index * sizeof(element))
	sh1 := (*reflect.SliceHeader)(unsafe.Pointer(&arr1))
	sh2 := (*reflect.SliceHeader)(unsafe.Pointer(&arr2))
	sh3 := (*reflect.SliceHeader)(unsafe.Pointer(&arr3))

	fmt.Printf("%d %d %d \n", sh1.Data, sh2.Data, sh3.Data)

	arr3[0] = 100
	fmt.Println(arr1)
}
