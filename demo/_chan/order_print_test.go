package _chan

import (
	"fmt"
	"sync"
	"testing"
	"time"
)

var currNumber int

// TestOrderPrint 多协程按顺序打印
func TestOrderPrint(t *testing.T) {
	OrderPrintWithCond()
}

func OrderPrintWithCond() {
	mutex := sync.Mutex{}
	cond := sync.NewCond(&mutex)
	var count = 5
	for i := 1; i <= count; i++ {
		go OrderPrintTask(i, count, &mutex, cond)
	}
	select {}
}

func OrderPrintTask(taskNo, count int, mutex *sync.Mutex, cond *sync.Cond) {
	for i := 0; i < 100; i++ {
		time.Sleep(time.Second)
		mutex.Lock()
		if currNumber%count+1 == taskNo {
			currNumber++
			printData := currNumber % count
			if printData == 0 {
				printData = 5
			}
			fmt.Println("task=", taskNo, " print => ", printData)
			cond.Broadcast()
		} else {
			cond.Wait()
		}
		mutex.Unlock()
	}
}

func OrderPrintWithChan() {
	chs := []chan struct{}{make(chan struct{}), make(chan struct{}), make(chan struct{}), make(chan struct{})}

	// 创建4个worker
	for i := 0; i < 4; i++ {
		go newWorker(i, chs[i], chs[(i+1)%4])
	}

	// 开启worker
	chs[0] <- struct{}{}

	select {}
}

func newWorker(id int, ch chan struct{}, nextCh chan struct{}) {
	for {
		token := <-ch
		fmt.Println(id)
		time.Sleep(time.Second)
		nextCh <- token
	}
}
