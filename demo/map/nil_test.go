package _map

import (
	"fmt"
	"testing"
)

func MapNilDemo() {
	defer func() {
		if err := recover(); err != nil {
			fmt.Println(err)
		}
	}()
	var m map[string]int

	// nil map允许delete和读取
	delete(m, "1")

	fmt.Println(m["1"])

	m["1"] = 1
}

func TestMapNilDemo(t *testing.T) {
	MapNilDemo()
}
