package lock

import (
	"fmt"
	"testing"
	"time"
)

func TestMyOnce_Do(t *testing.T) {
	once := MyOnce{}
	for i := 0; i < 100; i++ {
		go func() {
			time.Sleep(20 * time.Millisecond)
			once.Do(func() {
				fmt.Println("hello")
			})
		}()
	}
	time.Sleep(time.Second)
}
