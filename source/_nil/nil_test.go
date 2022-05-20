package _nil

import (
	"fmt"
	"reflect"
	"testing"
)

type NilValue struct {
	Name string
}

func (*NilValue) Say() {
	fmt.Println("say")
}

func (n *NilValue) SayName() {
	fmt.Println(n.Name)
}

func Show(val interface{}) {
	if val == nil {
		fmt.Println("nil!")
		return
	}
	fmt.Println("show ", val)
}

func TestNilValue(t *testing.T) {
	var a1 *int
	var a2 *float32
	fmt.Println(a1)
	fmt.Println(a2)

	Show(nil)

	var info interface{}
	info = a1
	Show(info)
	fmt.Println(reflect.ValueOf(info).IsNil())

	var nv *NilValue
	nv.Say()
}
