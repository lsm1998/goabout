package _chan

import (
	"fmt"
	"testing"
	"time"
)

func OneWayChanDemo() {
	var c = make(chan int, 10)
	go func() {
		for {
			time.Sleep(time.Second)
			wirthChan(c)
		}
	}()
	go func() {
		for {
			readChan(c)
		}
	}()
	time.Sleep(10 * time.Second)
}

// readChan 只读管道
func readChan(c <-chan int) {
	fmt.Println(<-c)
}

// wirthChan 只写管道
func wirthChan(c chan<- int) {
	c <- 1
}

func TestOneWayChanDemo(t *testing.T) {
	OneWayChanDemo()
}
