package request

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"reptile/qccupy"
	"strings"
)

func SubmitOrderRequest(submitOrderReq qccupy.SubmitOrderReq, token qccupy.UserToken) (qccupy.SubmitOrderStatus, error) {
	payload := strings.NewReader(submitOrderReq.SubmitOrderFromData())
	client := &http.Client{}
	req, err := http.NewRequest("POST", "https://kyfw.12306.cn/otn/leftTicket/submitOrderRequest", payload)
	if err != nil {
		return nil, err
	}
	cookieStrPrefix := fmt.Sprintf("_uab_collina=165337843156267971094302; JSESSIONID=%s; tk=%s; ",
		token.GetSessionId(), token.GetToken())

	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", cookieStrPrefix+"guidesStatus=off; _jc_save_wfdc_flag=dc; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ; _jc_save_fromStation=%u6DF1%u5733%2CIOQ; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; _jc_save_fromDate=2022-06-07; _jc_save_toDate=2022-06-07; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerpool_passport=182714890.50215.0000; BIGipServerotn=871367178.64545.0000; uKey=41bf7fa555ebbc037a1e9eac840394332ad7ed1600c977962443e1b00abe9244; BIGipServerotn=4007067914.24610.0000")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/leftTicket/init?random=1654588582664")
	req.Header.Add("Sec-Fetch-Dest", "empty")
	req.Header.Add("Sec-Fetch-Mode", "cors")
	req.Header.Add("Sec-Fetch-Site", "same-origin")
	req.Header.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36")
	req.Header.Add("X-Requested-With", "XMLHttpRequest")
	req.Header.Add("sec-ch-ua", "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"")
	req.Header.Add("sec-ch-ua-mobile", "?0")
	req.Header.Add("sec-ch-ua-platform", "\"Windows\"")
	res, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return nil, err
	}
	var resp SubmitOrderRequestResp
	if err = json.Unmarshal(body, &resp); err != nil {
		return nil, err
	}
	return &resp, nil
}

func GetPassengerDTOs(passengerFromData string, token qccupy.UserToken) (interface{}, error) {
	payload := strings.NewReader(passengerFromData)
	client := &http.Client{}
	req, err := http.NewRequest("POST", "https://kyfw.12306.cn/otn/confirmPassenger/getPassengerDTOs", payload)
	if err != nil {
		return nil, err
	}
	cookieStrPrefix := fmt.Sprintf("JSESSIONID=%s; tk=%s; ",
		token.GetSessionId(), token.GetToken())
	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", cookieStrPrefix+"guidesStatus=off; _jc_save_wfdc_flag=dc; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ; _jc_save_fromStation=%u6DF1%u5733%2CIOQ; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; _jc_save_fromDate=2022-06-07; _jc_save_toDate=2022-06-07; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerpool_passport=182714890.50215.0000; BIGipServerotn=1457062154.50210.0000; BIGipServerotn=1978138890.64545.0000")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/confirmPassenger/initDc")
	req.Header.Add("Sec-Fetch-Dest", "empty")
	req.Header.Add("Sec-Fetch-Mode", "cors")
	req.Header.Add("Sec-Fetch-Site", "same-origin")
	req.Header.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36")
	req.Header.Add("X-Requested-With", "XMLHttpRequest")
	req.Header.Add("sec-ch-ua", "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"")
	req.Header.Add("sec-ch-ua-mobile", "?0")
	req.Header.Add("sec-ch-ua-platform", "\"Windows\"")
	res, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return nil, err
	}
	fmt.Println(string(body))
	return nil, err
}
