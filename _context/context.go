package _context

import (
	"context"
	"fmt"
	"time"
)

func TimeoutDemo() {
	ctx, cancelFunc := context.WithTimeout(context.Background(), 1*time.Second)
	defer cancelFunc()
	sendHttp(ctx)
}

func sendHttp(ctx context.Context) {
	for {
		select {
		case <-ctx.Done():
			fmt.Println("超时")
		case <-timeConsumingWork():
			fmt.Println("成功返回")
		}
	}
}

func timeConsumingWork() <-chan struct{} {
	c := make(chan struct{}, 1)
	time.Sleep(3 * time.Second)
	c <- struct{}{}
	return c
}
