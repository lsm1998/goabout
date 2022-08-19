package main

import (
	"fmt"
	"net"
)

func main() {
	var list = make([]net.Conn, 100000, 100000)
	var err error
	for i := 0; i < len(list); i++ {
		list[i], err = net.Dial("tcp", "110.242.68.66:80")
		if err != nil {
			panic(err)
		}
		fmt.Println(list[i])
	}
}
