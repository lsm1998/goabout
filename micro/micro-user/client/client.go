package client

import (
	"go-micro.dev/v4"
	proto "micro-user/protos"
)

var (
	greeterClient proto.GreeterService
)

func InitClient(service micro.Service) {
	greeterClient = proto.NewGreeterService("micro.micro-user.greeter", service.Client())
}

func GreeterClient() proto.GreeterService {
	return greeterClient
}
