package source

import "fmt"

// sudo GOSSAFUNC=main go build main.go

// main
func main() {
	a := TestFunc(3)
	fmt.Println(a)
}

func TestFunc(a int) int {
	b := a * 3
	return b
}
