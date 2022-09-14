// Code generated by goctl. DO NOT EDIT!
// Source: payment.proto

package payment

import (
	"context"

	"travel-with-zero/app/payment/cmd/rpc/pb"

	"github.com/zeromicro/go-zero/zrpc"
	"google.golang.org/grpc"
)

type (
	CreatePaymentReq  = pb.CreatePaymentReq
	CreatePaymentResp = pb.CreatePaymentResp

	Payment interface {
		//  CreatePayment 创建微信支付预处理订单
		CreatePayment(ctx context.Context, in *CreatePaymentReq, opts ...grpc.CallOption) (*CreatePaymentResp, error)
	}

	defaultPayment struct {
		cli zrpc.Client
	}
)

func NewPayment(cli zrpc.Client) Payment {
	return &defaultPayment{
		cli: cli,
	}
}

//  CreatePayment 创建微信支付预处理订单
func (m *defaultPayment) CreatePayment(ctx context.Context, in *CreatePaymentReq, opts ...grpc.CallOption) (*CreatePaymentResp, error) {
	client := pb.NewPaymentClient(m.cli.Conn())
	return client.CreatePayment(ctx, in, opts...)
}
