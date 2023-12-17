package _map

import (
	"testing"
)

func TestMuteRead(t *testing.T) {
	MuteRead()
}

func TestMuteReadOnceWrite(t *testing.T) {
	MuteReadOnceWrite()
}

func TestMuteReadMuteWrite(t *testing.T) {
	MuteReadMuteWrite()
}

func TestMuteReadOnceFullWrite(t *testing.T) {
	for i := 0; i < 10000; i++ {
		MuteReadOnceFullWrite()
	}
}
