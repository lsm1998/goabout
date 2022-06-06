package sync

import (
	"fmt"
	"testing"
	"time"
)

func TestWaiting_WaitWithTimeout(t *testing.T) {
	waiting := Waiting{}

	waiting.Add(1)

	go func() {
		time.Sleep(5 * time.Second)
		waiting.Done()
	}()

	if !waiting.WaitWithTimeout(1 * time.Second) {
		fmt.Println("timeout")
	}
	fmt.Println("done")
}
