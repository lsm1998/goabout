package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("开始")

	defer func() {
		if err := recover(); err != nil {
			fmt.Println("抓获错误", err)
		}
	}()

	go func() {
		time.Sleep(time.Second)
		go func() {
			time.Sleep(time.Second)
			go func() {
				panic("error")
			}()
		}()
	}()

	select {}
}
