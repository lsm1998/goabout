package main

import (
	"encoding/json"
)

func getStr() *string {
	var str = "hello" // 逃逸堆内存
	return &str
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
}
