package main

import (
	"context"
	"fmt"
	"github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common"
	"github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common/profile"
	"github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/common/regions"
	dnspod "github.com/tencentcloud/tencentcloud-sdk-go/tencentcloud/dnspod/v20210323"
	"os"
)

var client *dnspod.Client

func init() {
	credential := common.NewCredential(
		os.Getenv("secretId"),
		os.Getenv("secretKey"),
	)
	client, _ = dnspod.NewClient(credential, regions.Guangzhou, profile.NewClientProfile())
}

func queryDomain() {
	request := dnspod.NewDescribeRecordListRequest()

	var offset, limit uint64 = 0, 20
	request.Domain = new(string)
	*request.Domain = "lsm1998.com"
	request.Offset = &offset
	request.Limit = &limit

	list, err := client.DescribeRecordList(request)
	if err != nil {
		panic(err)
	}
	fmt.Println(list)
}

func updateDomain(ctx context.Context) {
	request := dnspod.NewModifyRecordRequest()
	request.Domain = new(string)
	*request.Domain = "lsm1998.com"
	request.SubDomain = new(string)
	*request.SubDomain = "oa"
	request.Value = new(string)
	*request.Value = "1.1.1.1"
	request.RecordId = new(uint64)
	*request.RecordId = 1250817586
	request.RecordLine = new(string)
	*request.RecordLine = "默认"
	request.RecordType = new(string)
	*request.RecordType = "A"

	response, err := client.ModifyRecord(request)
	if err != nil {
		panic(err)
	}
	fmt.Printf("%s\n", response.ToJsonString())
}

func main() {
	queryDomain()
}
