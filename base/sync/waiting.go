package sync

import (
	"sync"
	"time"
)

// Waiting 增强版的sync.WaitGroup，增加了WaitWithTimeout方法
type Waiting struct {
	sync.WaitGroup
}

// WaitWithTimeout 等待一段时间，如果超时则返回false，否则返回true
func (w *Waiting) WaitWithTimeout(timeOut time.Duration) bool {
	return WaitWithFunc(timeOut, w.Wait)
}

// WaitWithFunc 等待一段时间，如果超时则返回false，否则返回true
func WaitWithFunc(timeOut time.Duration, f func()) bool {
	after := time.After(timeOut)
	waitChan := make(chan struct{})
	go func() {
		defer close(waitChan)
		f()
		waitChan <- struct{}{}
	}()

	select {
	case <-waitChan:
		return true
	case <-after:
		return false
	}
}
