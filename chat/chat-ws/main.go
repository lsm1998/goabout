package main

import (
	"chat-ws/websocket"
	"fmt"
	"github.com/panjf2000/gnet"
	"log"
)

func main() {
	echoServer := websocket.NewEchoServer()
	log.Fatal(gnet.Serve(echoServer, fmt.Sprintf("tcp://:%d", 8080), gnet.WithMulticore(true)))
}
