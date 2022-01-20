package _context

import (
	"context"
	"fmt"
	"sync"
	"time"
)

func TimeoutDemo() {
	ctx, cancelFunc := context.WithTimeout(context.Background(), 1*time.Second)
	defer cancelFunc()
	var wg sync.WaitGroup
	wg.Add(1)
	go sendHttp(ctx, &wg)
	wg.Wait()
}

func sendHttp(ctx context.Context, wg *sync.WaitGroup) {
	c := make(chan struct{}, 1)
	go timeConsumingWork(c)
Exit:
	for {
		select {
		case <-ctx.Done():
			fmt.Println("超时")
			break Exit
		case <-c:
			fmt.Println("gg")
			break Exit
		}
	}
	wg.Done()
}

func timeConsumingWork(c chan struct{}) {
	time.Sleep(3 * time.Second)
	c <- struct{}{}
}
