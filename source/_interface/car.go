package _interface

import "fmt"

/**
type iface struct {
	tab  *itab
	data unsafe.Pointer
}

// 空接口
type eface struct {
	_type *_type
	data  unsafe.Pointer
}

func efaceOf(ep *interface{}) *eface {
	return (*eface)(unsafe.Pointer(ep))
}

type itab struct {
	inter *interfacetype
	_type *_type
	hash  uint32 // copy of _type.hash. Used for type switches.
	_     [4]byte
	fun   [1]uintptr // variable sized. fun[0]==0 means _type does not implement inter.
}

type interfacetype struct {
	typ     _type
	pkgpath name
	mhdr    []imethod
}
*/

type Car interface {
	Drive()
}

type Truck struct {
	Model string
}

func (t *Truck) Drive() {
	fmt.Println(t.Model)
}
