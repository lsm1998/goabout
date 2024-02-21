package main

import (
	"flag"
	"fmt"
	"goclient/ctx"
	"goclient/ws"
	"strconv"
	"sync"
	"time"
)

var (
	host       = flag.String("h", "localhost", "host")
	port       = flag.Int("p", 8080, "port")
	count      = flag.Int("c", 1, "client count")
	loop       = flag.Int("l", 10, "work loop number")
	interval   = flag.Int("i", 1000, "interval")
	maxBodyLen = flag.Int("max", 100, "maxBodyLen")
	minBodyLen = flag.Int("min", 20, "minBodyLen")
)

func main() {
	flag.Parse()

	if *minBodyLen > *maxBodyLen {
		*minBodyLen, *maxBodyLen = *maxBodyLen, *minBodyLen
	}

	var wg sync.WaitGroup
	for i := 0; i < *count; i++ {
		wg.Add(1)
		go func(id int) {
			defer wg.Done()
			defer func() {
				if err := recover(); err != nil {
					_ = fmt.Errorf("StartWork fail,err=%v", err)
				}
			}()
			ws.StartWork(&ctx.WorkCtx{
				Id:         strconv.Itoa(id),
				Host:       *host,
				Port:       uint16(*port),
				LoopCount:  *loop,
				MaxBodyLen: *maxBodyLen,
				MinBodyLen: *minBodyLen,
				Interval:   time.Duration(*interval),
			})
		}(i)
	}
	wg.Wait()
}
