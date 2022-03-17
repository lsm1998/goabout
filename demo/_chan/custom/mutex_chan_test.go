package custom

import (
	"fmt"
	"testing"
	"time"
)

func TestMakeMutexChan(t *testing.T) {
	mutexChan := MakeMutexChan(1)

	go func() {
		mutexChan.Send(1)
		time.Sleep(1 * time.Second)
		mutexChan.Send(1)
	}()

	go func() {
		for {
			fmt.Println("Recv:", mutexChan.Recv())
		}
	}()

	select {}
}
