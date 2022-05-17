package _interface

import "unsafe"

type iface struct {
	// itab 指针
	tab *itab
	// 值指针
	data unsafe.Pointer
}

type eface struct {
	// 类型指针
	_type *_type
	// 值指针
	data unsafe.Pointer
}

type itab struct {
	// 接口类型
	inter *interfacetype
	// 接口实现类的具体类型
	_type *_type
	// type 的hash值
	hash uint32 // copy of _type.hash. Used for type switches.
	_    [4]byte
	// 实现的方法
	fun [1]uintptr // variable sized. fun[0]==0 means _type does not implement inter.
}

type interfacetype struct {
	typ     _type
	pkgpath name
	mhdr    []imethod
}

type imethod struct {
	name nameOff
	ityp typeOff
}

type name struct {
	bytes *byte
}

type tflag uint8

type nameOff int32
type typeOff int32
type textOff int32

// _type golang 类型
type _type struct {
	size       uintptr
	ptrdata    uintptr // size of memory prefix holding all pointers
	hash       uint32
	tflag      tflag
	align      uint8
	fieldAlign uint8
	kind       uint8
	// function for comparing objects of this type
	// (ptr to object A, ptr to object B) -> ==?
	equal func(unsafe.Pointer, unsafe.Pointer) bool
	// gcdata stores the GC type data for the garbage collector.
	// If the KindGCProg bit is set in kind, gcdata is a GC program.
	// Otherwise it is a ptrmask bitmap. See mbitmap.go for details.
	gcdata    *byte
	str       nameOff
	ptrToThis typeOff
}
