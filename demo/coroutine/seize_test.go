package coroutine

import (
	"fmt"
	"runtime"
	"testing"
	"time"
)

/**
1.14之前此代码死循环不会
1.14调度器基于信号的抢占机制解决了此问题
*/
func TestSeize(t *testing.T) {
	runtime.GOMAXPROCS(1)
	go func() {
		for {
			fmt.Println("run")
		}
	}()
	time.Sleep(time.Second)
	fmt.Println("done")
}
