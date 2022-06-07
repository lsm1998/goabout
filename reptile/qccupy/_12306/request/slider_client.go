package request

import (
	"context"
	"crypto/md5"
	"encoding/json"
	"errors"
	"fmt"
	"net/url"
	"reptile/utils"
	"reptile/utils/http"
	"time"
)

const (
	// todo load for config
	authId  = "unifySlide"
	authKey = "Msd6MLBh9XbmbuuP"
	sigUrl  = "http://10.189.7.66:9140/getsig"
)

func Md5hex(str ...string) string {
	hash := md5.New()
	hash.Reset()
	for _, v := range str {
		hash.Write([]byte(v))
	}
	return fmt.Sprintf("%x", hash.Sum(nil))
}

type GetsigBody struct {
	Method       string   `json:"method"`
	TraceId      string   `json:"trace_id"`
	RobotId      string   `json:"robot_id"`
	Timestamp    int64    `json:"timestamp"`
	Sign         string   `json:"sign"`
	Engine       string   `json:"engine"`
	BusinessType string   `json:"businessType"`
	Token        string   `json:"token"`
	Orderid      string   `json:"orderid"`
	Serid        int      `json:"serid"`
	Refer        string   `json:"refer"`
	Retry        bool     `json:"retry"`
	Lip          string   `json:"lip"`
	Proxy        struct{} `json:"proxy"`
	Apprefer     struct{} `json:"apprefer"`

	Biz string `json:"biz"`
}

type GetsigResp struct {
	Success   bool   `json:"success"`
	Code      int    `json:"code"`
	Msg       string `json:"msg"`
	Ret       int    `json:"ret"`
	Desc      string `json:"desc"`
	Engine    string `json:"engine"`
	SessionId string `json:"sessionId"`
	Sig       string `json:"sig"`
	Token     string `json:"token"`
}

func sign(reqTime string, reqMethod string) string {
	return Md5hex(authId, reqMethod, reqTime, Md5hex(reqMethod, reqTime, authKey))
}

func GetSign(ctx context.Context, traceId, orderId, token string) (GetsigResp, error) {
	now := time.Now()
	timestamp := now.Unix()
	return GetSignWithBody(ctx, GetsigBody{
		Method:       "getsig",
		TraceId:      traceId,
		RobotId:      "414144",
		Timestamp:    timestamp,
		Sign:         sign(now.Format("2006-01-02 15:04:05"), "getsig"),
		Engine:       "app",
		BusinessType: "train",
		Token:        token,
		Orderid:      orderId,
		Serid:        1,
		Refer:        "https://kyfw.12306.cn/mormhweb/logFiles/error.html",
		Retry:        false,
		Lip:          utils.GetLocalIpV4(),
		Proxy:        struct{}{},
		Apprefer:     struct{}{},
		Biz:          "queryticketcheck",
	})
}

func GetSignWithBody(ctx context.Context, body GetsigBody) (GetsigResp, error) {
	var resp GetsigResp
	bytes, _ := json.Marshal(body)
	timeout, cancelFunc := context.WithTimeout(ctx, 60*time.Second)
	defer cancelFunc()
	values := url.Values{}
	values.Set("jsonStr", string(bytes))
	response, err := http.New(sigUrl).
		SetPostForm(values).
		Post(timeout)
	if err != nil {
		return resp, err
	}
	if err = response.Unmarshal(&resp); err != nil {
		return resp, err
	}
	if resp.Ret != 1 {
		return resp, errors.New(resp.Msg)
	}
	return resp, nil
}
