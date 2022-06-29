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
		response := http.NewHttpResponse(conn)
		var result = struct {
			Name string `json:"name"`
		}{Name: "lsm"}
		response.Ok().JSON(200, result)
		response.Close()
	}
}

type NginxEvent interface {
	Accept() (net.Conn, error)

	Close() error
}
