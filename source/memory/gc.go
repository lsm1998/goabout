package main

import "runtime"

type Company struct {
	Name, Address string
}

func main() {
	p := new(Company)
	p.Address = "hello"
	runtime.GC()
}
