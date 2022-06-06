package sync

import (
	"sync"
	"time"
)

type Waiting struct {
	sync.WaitGroup
}

func (w *Waiting) WaitWithTimeout(timeOut time.Duration) bool {
	after := time.After(timeOut)
	waitChan := make(chan struct{}, 0)
	go func() {
		defer close(waitChan)
		w.Wait()
		waitChan <- struct{}{}
	}()

	select {
	case <-waitChan:
		return true
	case <-after:
		return false
	}
}
