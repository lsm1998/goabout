package main

import (
	"fmt"
	"time"
)

func main() {
	timingWheel := NewTimingWheel(time.Second, 10)

	timingWheel.AfterFunc(5*time.Second, func() {
		fmt.Println("hello")
	})

	timingWheel.Start()

	time.Sleep(time.Hour)
}
