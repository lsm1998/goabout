package main

func main() {
	c1 := make(chan int)
	c2 := make(chan int)

	// 底层调用 runtime.selectgo
	select {
	case <-c1:
	case <-c2:
	default:
	}
}
