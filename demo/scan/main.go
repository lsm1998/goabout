package main

import (
	"fmt"
	"net"
	"runtime"
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

var end atomic.Value

func init() {
	end.Store(false)
}

func (t *TcpPortScan) Scan() {
	var c = make(chan struct{}, 128)
	for i := t.minPort; i < t.maxPort; i++ {
		c <- struct{}{}
		go func(port uint16) {
			address := fmt.Sprintf("%s:%d", t.host, port)
			if err := t.tcpDial(address); err == nil {
				fmt.Println("端口开放：", port)
			}
			<-c
		}(i)
	}
	fmt.Println("循环结束")
	end.Store(true)
}

func (t *TcpPortScan) PortRange() (min, max uint16) {
	return min, max
}

func (t *TcpPortScan) tcpDial(address string) error {
	_, err := net.Dial("tcp", address)
	return err
}

func main() {
	tcpPortScan := &TcpPortScan{host: "127.0.0.1", minPort: 1025, maxPort: 65535}
	go tcpPortScan.Scan()
	for {
		time.Sleep(2 * time.Second)
		fmt.Println("当前协程数量=", runtime.NumGoroutine())
		val, ok := end.Load().(bool)
		if val && ok {
			break
		}
	}
}
