package main

import (
	"context"
	"fmt"
	"github.com/asim/go-micro/plugins/registry/etcd/v4"
	"go-micro.dev/v4"
	"go-micro.dev/v4/registry"
	"log"
	"micro-user/client"
	"micro-user/handler"
	proto "micro-user/protos"
	"time"
)

func main() {
	service := micro.NewService(
		micro.Name("micro.micro-user.greeter"),
		micro.Version("v1"),
		micro.Registry(etcd.NewRegistry(func(options *registry.Options) {
			options.Addrs = []string{"119.91.192.70:2379"}
		})),
	)

	service.Init()
	_ = proto.RegisterGreeterHandler(service.Server(), new(handler.Greeter))

	client.InitClient(service)

	go clientDemo()

	if err := service.Run(); err != nil {
		log.Fatal(err)
	}
}

func clientDemo() {
	defer func() {
		if err := recover(); err != nil {
			fmt.Println("程序错误,err=", err)
		}
	}()
	time.Sleep(3 * time.Second)
	response, err := client.GreeterClient().Hello(context.Background(), &proto.HelloRequest{Name: "lsm"})
	if err != nil {
		panic(err)
	}
	fmt.Println(response.Greeting)
}
