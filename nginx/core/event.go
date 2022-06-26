package core

import (
	"fmt"
	"net"
	"nginx/http"
)

func NgxEventInit(address string) {
	tcpEvent, err := NewTcpEvent(address)
	if err != nil {
		panic(err)
	}
	for {
		conn, err := tcpEvent.Accept()
		if err != nil {
			continue
		}
		httpRequest := http.NewHttpRequest(conn)
		fmt.Println(httpRequest)
	}
}

type NginxEvent interface {
	Accept() (net.Conn, error)

	Close() error
}
