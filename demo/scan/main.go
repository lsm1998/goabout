package main

import (
	"fmt"
	"net"
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
	var c = make(chan struct{}, 64)
	for i := t.minPort; i <= t.maxPort; i++ {
		go func(port uint16) {
			c <- struct{}{}
			address := fmt.Sprintf("%s:%d", t.host, port)
			if err := t.tcpDial(address); err == nil {
				fmt.Println("端口开放：", port)
			}
			<-c
		}(i)
	}
	time.Sleep(time.Hour)
}

func (t *TcpPortScan) PortRange() (min, max uint16) {
	return min, max
}

func (t *TcpPortScan) tcpDial(address string) error {
	_, err := net.Dial("tcp", address)
	return err
}

func main() {
	tcpPortScan := &TcpPortScan{host: "127.0.0.1", minPort: 0, maxPort: 65535}
	tcpPortScan.Scan()
}
