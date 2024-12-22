package main

import (
	"base/hdfs/hdfs"
	"fmt"
	"io"
)

func main() {
	client, err := hdfs.NewClient([]string{"192.168.88.129:9000"}, "lsm")
	if err != nil {
		panic(err)
	}

	//if err = client.Mkdir("/images"); err != nil {
	//	panic(err)
	//}

	// client.Create("/test.txt")

	//if err = client.Upload("C:\\Users\\Administrator\\Pictures\\OIP-C.jpg", "/b.jpg"); err != nil {
	//	panic(err)
	//}

	files, err := client.List("/")
	if err != nil {
		panic(err)
	}

	for _, file := range files {
		fmt.Println(file)
	}

	// 写入内容
	_, err = client.Append("/hello.txt", []byte("hello world"))
	if err != nil {
		panic(err)
	}

	// 读取内容
	reader, err := client.Open("/hello.txt")
	if err != nil {
		panic(err)
	}

	data, err := io.ReadAll(reader)
	if err != nil {
		panic(err)
	}
	fmt.Println(string(data))
}
