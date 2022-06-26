package http

import (
	"fmt"
	"net/url"
	"testing"
)

func Test_parseRequestLine(t *testing.T) {
	parse, _ := url.Parse("https://www.baidu.com/index.html?name=lsm")
	fmt.Println(parse)
}
