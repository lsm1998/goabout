package http

import (
	"fmt"
	"testing"
)

func TestNew(t *testing.T) {
	response, err := New("https://www.baidu.com").SetPostForm(nil).Post()
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(string(response.GetBody()))
}
