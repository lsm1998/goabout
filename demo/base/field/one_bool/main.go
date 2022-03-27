package main

import "fmt"

// GOOS=linux GOARCH=386 go tool compile -S main.go >> main.S
func main() {
	oneType := OneType{}
	fmt.Println(oneType, SetOneType(&oneType))
}

type (
	OneType struct {
		Val bool
	}
)

//go:noinline
func SetOneType(oneType *OneType) error {
	oneType.Val = true
	return nil
}
