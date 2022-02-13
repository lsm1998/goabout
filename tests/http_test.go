package tests

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"testing"
)

func TestHTTP(t *testing.T) {
	resp, err := http.Get("https://baidu.com")
	if err != nil {
		panic(err)
	}
	defer resp.Body.Close()

	bytes, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		panic(err)
	}

	fmt.Println(string(bytes))
}
