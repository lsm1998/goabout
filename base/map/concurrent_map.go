package _map

import (
	"sync"
	"time"
)

// go run -race main.go

var cacheMap map[int]int

func init() {
	cacheMap = make(map[int]int)
}

// MuteRead 并发读
func MuteRead() {
	var wg sync.WaitGroup
	wg.Add(10)
	for i := 0; i < 10; i++ {
		go func() {
			defer wg.Done()
			for j := 0; j < 10; j++ {
				time.Sleep(5)
				_ = cacheMap[j]
			}
		}()
	}
	wg.Wait()
}

// MuteReadOnceWrite 一写多读
func MuteReadOnceWrite() {
	var wg sync.WaitGroup
	wg.Add(11)
	go func() {
		go func() {
			defer wg.Done()
			for j := 0; j < 10; j++ {
				time.Sleep(5)
				cacheMap[j] = j
			}
		}()
	}()
	for i := 0; i < 10; i++ {
		go func() {
			defer wg.Done()
			for j := 0; j < 10; j++ {
				time.Sleep(5)
				_ = cacheMap[j]
			}
		}()
	}
	wg.Wait()
}

// MuteReadOnceFullWrite 一写多读，map覆盖
func MuteReadOnceFullWrite() {
	var wg sync.WaitGroup
	wg.Add(11)
	go func() {
		go func() {
			defer wg.Done()
			for j := 0; j < 10; j++ {
				time.Sleep(5)
				cacheMap = map[int]int{
					j: j,
				}
			}
		}()
	}()
	for i := 0; i < 10; i++ {
		go func() {
			defer wg.Done()
			for j := 0; j < 10; j++ {
				time.Sleep(5)
				_ = cacheMap[j]
			}
		}()
	}
	wg.Wait()
}

func MuteReadMuteWrite() {
	var wg sync.WaitGroup
	wg.Add(20)
	go func() {
		for i := 0; i < 10; i++ {
			go func() {
				defer wg.Done()
				for j := 0; j < 10; j++ {
					time.Sleep(5)
					cacheMap[j] = j
				}
			}()
		}
	}()
	for i := 0; i < 10; i++ {
		go func() {
			defer wg.Done()
			for j := 0; j < 10; j++ {
				time.Sleep(5)
				_ = cacheMap[j]
			}
		}()
	}
	wg.Wait()
}
