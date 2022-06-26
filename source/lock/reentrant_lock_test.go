package lock

import (
	"fmt"
	"sync"
	"testing"
	"time"
)

func TestNewReentryLock(t *testing.T) {
	lock := NewReentryLock()
	lock.Lock()
	lock.Lock()
	t.Log(lock.reentryCount)
	lock.UnLock()
	lock.UnLock()
	t.Log(lock.reentryCount)
}

func TestReentrantLock_TryLock(t *testing.T) {
	lock := NewReentryLock()

	var wg sync.WaitGroup
	wg.Add(2)
	go func() {
		defer wg.Done()
		fmt.Println(goID())
		lock.Lock()
		fmt.Println("lock")
		time.Sleep(3 * time.Second)
		fmt.Println("unlock")
		lock.UnLock()
	}()

	go func() {
		defer wg.Done()
		fmt.Println(goID())
		for {
			time.Sleep(time.Second)
			if lock.TryLock() {
				fmt.Println("TryLock true")
				lock.UnLock()
				break
			} else {
				fmt.Println("TryLock false")
			}
		}
	}()
	wg.Wait()
}
