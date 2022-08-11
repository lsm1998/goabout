package libs

/*
#cgo CFLAGS: -I.
#cgo CXXFLAGS: -I.
#cgo LDFLAGS: -lstdc++
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hello.h"
*/
import "C"
import "unsafe"

const MaxBufSize = 1024

func SayHello(name string) string {
	var resp *C.char

	resp = (*C.char)(C.malloc(MaxBufSize))

	defer C.free(unsafe.Pointer(resp))

	nameIn := C.CString(name)

	var l = C.say_hello(nameIn, resp)

	r := C.GoString(resp)
	return r[:l]
}
