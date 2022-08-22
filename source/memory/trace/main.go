package main

import (
	"os"
	"sync"
)

func main() {
	_ = os.Setenv("GODEBUG", "gctrace=1")

	wg := sync.WaitGroup{}
	wg.Add(10)

	for i := 0; i < 10; i++ {
		go func(wg *sync.WaitGroup) {
			var count int
			for j := 0; j < 1e10; j++ {
				count++
			}
			wg.Done()
		}(&wg)
	}
	wg.Wait()
}
