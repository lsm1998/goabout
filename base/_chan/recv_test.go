package _chan

import (
	"fmt"
	"testing"
	"time"
)

func TestRecv(t *testing.T) {
	c := make(chan int, 1)
	go func() {
		c <- 1
		c <- 2
	}()
	time.Sleep(time.Second)
	fmt.Println(<-c)
	fmt.Println(<-c)
}
