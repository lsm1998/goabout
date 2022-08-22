package main

import (
	"encoding/json"
	"reflect"
)

func getStr() *string {
	var str = "hello" // 逃逸堆内存
	return &str
}

func getList(l int) []struct{} {
	return make([]struct{}, l, l)
}

func show1(val interface{}) {
	i, ok := val.(int)
	if !ok {
		panic("show2")
	}
	i++
}

func show2(val interface{}) {
	// 反射导致val逃逸
	of := reflect.ValueOf(val)
	if of.IsZero() {
		return
	}
}

func main() {
	list := []int{1, 2, 3} // 不会逃逸
	list = append(list, 1, 2, 3)
	for i := 0; i < 10; i++ {
		list = append(list, i)
	}
	_ = getStr()

	// json.Marshal 导致 list逃逸到堆上
	if _, err := json.Marshal(list); err != nil {
		panic(err)
	}

	list2 := getList(10)
	for range list2 {
	}

	i1 := 0
	i2 := 0
	show1(i1)
	show2(i2)
}
