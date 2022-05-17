package _map

import (
	"fmt"
	"sync"
	"testing"
)

func TestSyncMap(t *testing.T) {
	m := Map{}

	var wg sync.WaitGroup
	wg.Add(200)

	for i := 0; i < 100; i++ {
		go func(i int) {
			m.Store(i, i)
			wg.Done()
		}(i)
	}

	for i := 0; i < 100; i++ {
		go func(i int) {
			fmt.Println(m.Load(i))
			wg.Done()
		}(i)
	}

	wg.Wait()
}
