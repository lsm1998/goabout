package main

import (
	"context"
	"fmt"
	mustHttp "github.com/lsm1998/must/http"
	"testing"
	"time"
)

func TestHttpClient(t *testing.T) {
	ctx, cancelFunc := context.WithTimeout(context.Background(), time.Second)
	defer cancelFunc()
	response, err := mustHttp.New("https://www.baidu.com").
		SetPostForm(nil).
		Post(ctx)
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(response.Curl())

	fmt.Println(response.UseTime())
}
