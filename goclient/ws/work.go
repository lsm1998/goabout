package ws

import (
	"fmt"
	"github.com/gorilla/websocket"
	"goclient/ctx"
	"net/http"
	"time"
)

func StartWork(ctx *ctx.WorkCtx) {
	dialer := websocket.Dialer{}

	conn, response, err := dialer.Dial(fmt.Sprintf("ws://%s:%d", ctx.Host, ctx.Port), http.Header{})
	if err != nil {
		panic(err)
	}

	if response.StatusCode != http.StatusSwitchingProtocols {
		panic("response StatusCode not SwitchingProtocols")
	}

	go func() {
		for {
			_, data, err := conn.ReadMessage()
			if err != nil {
				fmt.Println("收到消息：", string(data))
			}
		}
	}()
	for i := 0; i < ctx.LoopCount; i++ {
		if err = conn.WriteMessage(websocket.TextMessage, ctx.GetByteData()); err != nil {
			panic(err)
		}
		time.Sleep(ctx.Interval)
	}
}
