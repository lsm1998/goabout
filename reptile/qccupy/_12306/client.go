package _12306

import (
	"context"
	"fmt"
	"net"
	"net/http"
	"reptile/qccupy"
	"reptile/qccupy/_12306/request"
	tinygoHttp "reptile/utils/http"
	"time"
)

var (
	defaultCookies = []*http.Cookie{
		{Name: "_passport_session", Value: ""},
		{Name: "guidesStatus", Value: "off"},
		{Name: "highContrastMode", Value: "defaltMode"},
		{Name: "cursorStatus", Value: "off"},
		{Name: "_jc_save_wfdc_flag", Value: "dc"},
		{Name: "_jc_save_toStation", Value: "%u6DF1%u5733%u576A%u5C71%2CIFQ"},
		{Name: "route", Value: "c5c62a339e7744272a54643b3be5bf64"},
		{Name: "BIGipServerpassport", Value: "837288202.50215.0000"},
		{Name: "BIGipServerpool_passport", Value: "216269322.50215.0000"},
		{Name: "BIGipServerportal", Value: "3067347210.17695.0000"},
		{Name: "current_captcha_type", Value: "Z"},
		{Name: "_jc_save_fromDate", Value: ""},
		{Name: "_jc_save_fromStation", Value: ""},
		{Name: "BIGipServerotn", Value: "3956736266.50210.0000"},
		{Name: "_jc_save_toDate", Value: ""},
		{Name: "RAIL_EXPIRATION", Value: "1654402799824"},
		{Name: "RAIL_DEVICEID", Value: "PwBC63uCH83AT8oJSjnUfCM7SPTzBfqvFQEkeG9RqSs5qYzLWiWdW3NbWtEtJ60SIy3kH1Jnl4AnDEuuW7cceTeJCzFpGhdOOAyxtA1CHRd5SeZP0Ur_lv2pwK_N-rGbrjlEAJrJ-EXW-ZVQCyzOR_RCJ8EEjqrx"},
		{Name: "BIGipServerotn", Value: "351273482.38945.0000"},
	}

	defaultHeader = &http.Header{
		"Accept":             []string{"*/*"},
		"Accept-Language":    []string{"zh-CN,zh;q=0.9"},
		"Connection":         []string{"keep-alive"},
		"Origin":             []string{"https://kyfw.12306.cn"},
		"Sec-Fetch-Dest":     []string{"empty"},
		"Sec-Fetch-Mode":     []string{"cors"},
		"Sec-Fetch-Site":     []string{"same-origin"},
		"User-Agent":         []string{"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36"},
		"X-Requested-With":   []string{"XMLHttpRequest"},
		"sec-ch-ua":          []string{"\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"101\", \"Google Chrome\";v=\"101\"\""},
		"sec-ch-ua-mobile":   []string{"?0"},
		"sec-ch-ua-platform": []string{"\"Windows\""},
	}
)

type kyfwClient struct {
	request.UserToken
	Host    string
	Scheme  string
	headers http.Header
	ctx     context.Context
	Ip      string
	timeOut time.Duration
}

func NewKyfwClient(ctx context.Context, scheme, domain string, timeOut time.Duration) *kyfwClient {
	ip, err := initIP(domain)
	if err != nil {
		return nil
	}
	return &kyfwClient{
		Host:    domain,
		Scheme:  scheme,
		Ip:      ip,
		headers: make(http.Header),
		ctx:     ctx,
		timeOut: timeOut,
	}
}

func initIP(domain string) (string, error) {
	ns, err := net.LookupHost(domain)
	if err != nil {
		return "", err
	}
	if len(ns) > 0 {
		return ns[0], nil
	}
	return "", err
}

func (t *kyfwClient) baseUrl() string {
	return fmt.Sprintf("%s://%s", t.Scheme, t.Ip)
}

func (t *kyfwClient) TicketQuery(condition qccupy.ConditionMap, filter qccupy.TicketQueryFilter) (qccupy.QueryLeftTicketData, error) {
	var resp request.LeftTicketQueryResp
	ctx, cancelFunc := context.WithTimeout(t.ctx, t.timeOut)
	defer cancelFunc()
	_url := fmt.Sprintf("%s/otn/leftTicket/query?leftTicketDTO.train_date=%s&leftTicketDTO.from_station=%s&leftTicketDTO.to_station=%s&purpose_codes=%s",
		t.baseUrl(), condition["train_date"], condition["from_station"], condition["to_station"], condition["purpose_codes"])
	response, err := tinygoHttp.NewWithSkipVerify(_url).
		SetHost(t.Host).
		Header(*defaultHeader).
		AddCookie(defaultCookies...).
		Get(ctx)
	if err != nil {
		return nil, err
	}
	if err = response.Unmarshal(&resp); err != nil {
		return nil, err
	}
	return ct(resp.Data.Result, resp.Data.Map), nil
}

func (t *kyfwClient) LocationCodeCheck() bool {
	panic("implement me")
}

func (t *kyfwClient) CheckOrderInfo(req qccupy.CheckOrderInfoReq) (bool, error) {
	var resp request.CheckOrderInfoResp
	ctx, cancelFunc := context.WithTimeout(t.ctx, t.timeOut)
	defer cancelFunc()
	response, err := tinygoHttp.NewWithSkipVerify(fmt.Sprintf("%s/otn/confirmPassenger/checkOrderInfo", t.baseUrl())).
		SetHost(t.Host).
		Header(t.headers).
		SetPostFormData([]byte(req.CheckOrderInfoDataForm())).
		Post(ctx)
	if err != nil {
		return false, err
	}
	if err = response.Unmarshal(&resp); err != nil {
		return false, err
	}
	return resp.Data.SubmitStatus, nil
}
