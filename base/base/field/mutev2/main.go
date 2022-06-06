package main

import (
	"fmt"
)

// GOOS=linux GOARCH=386 go tool compile -N -S main.go >> main.S
func main() {
	muteType := MuteType{}
	outMuch(muteType, SetMuteType(&muteType))
}

type (
	MuteType struct {
		Name string
		Age  int32
	}
)

func outMuch(demo interface{}, err error) {
	fmt.Println(demo)
}

func SetMuteType(muteType *MuteType) error {
	muteType.Name = "hello"
	return nil
}
