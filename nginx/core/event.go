package core

import (
	"net"
	"nginx/http"
)

func NgxEventInit(address string) {
	tcpEvent, err := NewTcpEvent(address)
	if err != nil {
		panic(err)
	}
	eventLoop(tcpEvent)
}

func eventLoop(event NginxEvent) {
	for {
		conn, err := event.Accept()
		if err != nil {
			Error("event Accept fail,err=%v", err)
			continue
		}
		go func() {
			request := http.NewHttpRequest(conn)
			response := http.NewHttpResponse(conn)
			defer response.Close()
			var result = struct {
				Name string `json:"name"`
			}{Name: request.Query("name")}
			if err = response.JSON(200, result); err != nil {
				Error("response JSON fail,err=%v", err)
				return
			}
		}()
	}
}

type NginxEvent interface {
	Accept() (net.Conn, error)

	Close() error
}
