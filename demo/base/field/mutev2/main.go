package main

import (
	"fmt"
)

// GOOS=linux GOARCH=386 go tool compile -N -S main.go >> main.S
func main() {
	muteType := MuteType{}
	_ = SetMuteType(&muteType)
	fmt.Println(muteType)
}

type (
	MuteType struct {
		Name string
		Age  int32
	}
)

func SetMuteType(muteType *MuteType) error {
	muteType.Name = "hello"
	return nil
}
