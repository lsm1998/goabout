package main

import "fmt"

// GOOS=linux GOARCH=386 go tool compile -l -S main.go >> main.S
func main() {
	oneType := OneType{}
	fmt.Println(oneType, SetOneType(&oneType))
}

type (
	OneType struct {
		Val int8
	}
)

func SetOneType(oneType *OneType) error {
	oneType.Val = 1
	return nil
}
