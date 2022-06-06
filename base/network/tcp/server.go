package tcp

import (
	"base/network"
	"context"
	"log"
	"net"
)

type Config struct {
	Address string
}

type TcpHandler struct {
}

func ListenAndServe(listener net.Listener,
	handler network.Handler,
	closeChan chan struct{}) {
	for true {
		conn, err := listener.Accept()
		if err != nil {
			log.Fatal(err)
		}
		log.Printf("accept conn")
		go handler.Handler(context.Background(), conn)
	}
}
