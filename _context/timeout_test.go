package _context

import (
	"context"
	"fmt"
	"sync"
	"testing"
	"time"
)

func TimeoutDemo() {
	// context.Background() 本质是获取emptyCtx，即为空context
	// 空context用于context根节点，本身不包含任何值，仅仅是其他context父节点
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

func TestTimeoutDemo(t *testing.T) {
	TimeoutDemo()
}
