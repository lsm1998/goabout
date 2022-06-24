package main

import (
	"fmt"
	"github.com/gocolly/colly"
)

func main() {
	// https://www.suihuabei.org/dir/74594.html
	c := colly.NewCollector()
	fmt.Println(c)
}
