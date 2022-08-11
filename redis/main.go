package main

import (
	"sync"
	"time"
)

func main() {
	var mu sync.Mutex
	mu.Lock()
	go func() {
		time.Sleep(time.Second)
		mu.Unlock()
	}()
	mu.Lock()
}
