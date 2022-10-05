package _nil

import (
	"fmt"
	"testing"
)

type Student struct {
	Name string
}

func (*Student) SayHello() {
	fmt.Println("hello")
}

func (s *Student) Say() {
	fmt.Println(s.Name)
}

func TestNil(t *testing.T) {
	var s1 *Student
	s1.Say()
}
