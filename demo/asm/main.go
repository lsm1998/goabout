package main

import "fmt"

type V1 struct {
	Val int64
}

type V2 struct {
	V1
	Name string `json:"name"`
}

// GOOS=linux GOARCH=386 go tool compile -S main.go >> main.S
func main() {
	v1 := new(V1)
	v1.Val = 998

	v2 := new(V2)
	v2.Val = v1.Val

	fmt.Println(v1.Val)
}
