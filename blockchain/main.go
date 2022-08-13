package main

import (
	"context"
	"fmt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/ethclient"
	"log"
)

/**
https://goethereumbook.org/zh/
*/

func main() {
	//client, err := ethclient.Dial("https://cloudflare-eth.com")
	//fmt.Println(client, err)

	// 启动本地ganache客户端
	// npm install -g ganache-cli && ganache-cli
	client, err := ethclient.Dial("http://localhost:8545")
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(client)

	account := common.HexToAddress("0x8D8feC578aDe60BD3D58550570b2D178c648AD1E")
	balance, err := client.BalanceAt(context.Background(), account, nil)
	if err != nil {
		log.Fatal(err)
	}
	// 账户余额
	fmt.Println(balance)

	pendingBalance, err := client.PendingBalanceAt(context.Background(), account)
	// 待处理的账户余额
	fmt.Println(pendingBalance)

	GenerateKeystore()
}
