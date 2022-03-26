package main

import "fmt"

// GOOS=linux GOARCH=386 go tool compile -N -S main.go >> main.S
// go build -gcflags="-m" main.go
func main() {
	muteType := MuteType{}
	// fmt.Println(muteType, SetMuteType(&muteType))
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
