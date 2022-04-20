package main

import (
	"context"
	"fmt"
	"github.com/lsm1998/mute/http"
)

func main() {
	response, err := http.New("http://www.baidu.com").
		MustCode(200).
		Get(context.Background())
	if err != nil {
		panic(err)
	}
	fmt.Println(string(response.GetBody()))
	fmt.Println(response.Curl())
}
