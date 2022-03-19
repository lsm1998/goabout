package main

import "fmt"

// GOOS=linux GOARCH=386 go tool compile -S main.go >> main.S
func main() {
	oneType := OneType{}
	fmt.Println(oneType, SetOneType(&oneType))
}

type (
	OneType struct {
		Name string
	}
)

func SetOneType(oneType *OneType) error {
	oneType.Name = "hello"
	return nil
}
