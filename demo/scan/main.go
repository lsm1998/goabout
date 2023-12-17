package main

import (
	"flag"
	"fmt"
	"net"
	"sync"
	"sync/atomic"
	"time"
)

type Scan interface {
	Scan()
}

type PortScan interface {
	Scan

	PortRange() (min, max uint16)
}

type IpScan interface {
	Scan

	Host() (host string)
}

type TcpPortScan struct {
	minPort uint16
	maxPort uint16
	host    string
}

func (t *TcpPortScan) Scan() {
	var wg sync.WaitGroup
	var c = make(chan struct{}, *workNum)
	for i := t.minPort; i < t.maxPort; i++ {
		wg.Add(1)
		c <- struct{}{}
		go func(port uint16) {
			defer wg.Done()
			address := fmt.Sprintf("%s:%d", t.host, port)
			if err := t.tcpDial(address); err == nil {
				newVal := atomic.AddInt64(&openPortCount, 1)
				fmt.Printf("open port: %d, count: %d\n", port, newVal)
			}
			<-c
		}(i)
	}
	wg.Wait()
}

func (t *TcpPortScan) PortRange() (min, max uint16) {
	return min, max
}

func (t *TcpPortScan) tcpDial(address string) error {
	_, err := net.Dial("tcp", address)
	return err
}

var _ Scan = (*TcpPortScan)(nil)

var (
	host    = flag.String("h", "localhost", "host")
	minPort = flag.Uint("min", 1025, "min port")
	maxPort = flag.Uint("max", 65535, "max port")
	workNum = flag.Uint("w", 1000, "work num")
)

var (
	openPortCount int64
)

func main() {
	now := time.Now()
	flag.Parse()
	tcpPortScan := &TcpPortScan{host: *host, minPort: uint16(*minPort), maxPort: uint16(*maxPort)}
	tcpPortScan.Scan()
	fmt.Println("open port count:", openPortCount)
	fmt.Println("耗时:", time.Since(now))
}
