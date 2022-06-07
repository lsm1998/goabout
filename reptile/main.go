package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"strings"
)

func getPassengerDTOs() {
	url := "https://kyfw.12306.cn/otn/confirmPassenger/getPassengerDTOs"
	method := "POST"

	payload := strings.NewReader(`_json_att=&REPEAT_SUBMIT_TOKEN=9148aba71e4939180d28c32dfd3d74a5`)

	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)
	if err != nil {
		fmt.Println(err)
		return
	}
	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", "JSESSIONID=2D465A9E9F08239EAC5C561125CCB566; BIGipServerotn=1190134282.38945.0000; RAIL_DEVICEID=fgyX4_b_575hbM4mMwN5TDkKGSgpZONpAeHBSBueU9Po9k7XJ8mC3NL0j2RrKZyMK29HDLOSk7fCpmXK7B9E_GneXYbWfTtQyd2OBTDnfXiZpQXNQb4S0ODwdrl4XGWeYdqgoYoexaLfTWbMmOKapgv9Z-iwx5x4; route=6f50b51faa11b987e576cdb301e545c4")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/confirmPassenger/initDc")
	req.Header.Add("Sec-Fetch-Dest", "empty")
	req.Header.Add("Sec-Fetch-Mode", "cors")
	req.Header.Add("Sec-Fetch-Site", "same-origin")
	req.Header.Add("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36")
	req.Header.Add("X-Requested-With", "XMLHttpRequest")
	req.Header.Add("sec-ch-ua", "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"")
	req.Header.Add("sec-ch-ua-mobile", "?0")
	req.Header.Add("sec-ch-ua-platform", "\"macOS\"")

	res, err := client.Do(req)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(string(body))
}

func getQueueCount() {
	url := "https://kyfw.12306.cn/otn/confirmPassenger/getQueueCount"
	method := "POST"

	payload := strings.NewReader(`train_date=Thu+Jun+09+2022+00%3A00%3A00+GMT%2B0800+(%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4)&train_no=6i000C682004&stationTrainCode=C6820&seatType=O&fromStationTelecode=IOQ&toStationTelecode=IFQ&leftTicket=wxHvQALdSLnpABHUFYq4F7alq6aRX6Fl9WT8EsaJ%252FDXPjlw%252F&purpose_codes=00&train_location=Q7&_json_att=&REPEAT_SUBMIT_TOKEN=2da1f91e5472456d95c438389d260e27`)

	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)

	if err != nil {
		fmt.Println(err)
		return
	}
	req.Header.Add("Accept", "application/json, text/javascript, */*; q=0.01")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Cache-Control", "no-cache")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", "JSESSIONID=858EDC9960380E544CB065D96011A1EF; tk=kYNOPVAQ1wCWAt6qOWD5Pw6F4QBRoXtNT8YltEOvE08cgl1l0; _jc_save_wfdc_flag=dc; BIGipServerotn=1190134282.38945.0000; RAIL_EXPIRATION=1654898733358; RAIL_DEVICEID=fgyX4_b_575hbM4mMwN5TDkKGSgpZONpAeHBSBueU9Po9k7XJ8mC3NL0j2RrKZyMK29HDLOSk7fCpmXK7B9E_GneXYbWfTtQyd2OBTDnfXiZpQXNQb4S0ODwdrl4XGWeYdqgoYoexaLfTWbMmOKapgv9Z-iwx5x4; guidesStatus=off; highContrastMode=defaltMode; cursorStatus=off; BIGipServerpool_passport=165937674.50215.0000; route=6f50b51faa11b987e576cdb301e545c4; current_captcha_type=Z; _jc_save_toDate=2022-06-07; _jc_save_fromDate=2022-06-09; _jc_save_fromStation=%u6DF1%u5733%2CSZQ; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ; uKey=41bf7fa555ebbc037a1e9eac8403943373bc1c672548f79a48afc3642b6d575d; uKey=41bf7fa555ebbc037a1e9eac84039433c4337e009465489981dd610db1607e84")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Pragma", "no-cache")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/confirmPassenger/initDc")
	req.Header.Add("Sec-Fetch-Dest", "empty")
	req.Header.Add("Sec-Fetch-Mode", "cors")
	req.Header.Add("Sec-Fetch-Site", "same-origin")
	req.Header.Add("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36")
	req.Header.Add("X-Requested-With", "XMLHttpRequest")
	req.Header.Add("sec-ch-ua", "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"")
	req.Header.Add("sec-ch-ua-mobile", "?0")
	req.Header.Add("sec-ch-ua-platform", "\"macOS\"")

	res, err := client.Do(req)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(string(body))
}

func conf() {
	url := "https://kyfw.12306.cn/otn/login/conf"
	method := "POST"

	client := &http.Client{}
	req, err := http.NewRequest(method, url, nil)

	if err != nil {
		fmt.Println(err)
		return
	}
	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Cache-Control", "no-cache")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Length", "0")
	req.Header.Add("Cookie", "JSESSIONID=F83BAD84DD79ED3FDF38059D04FFFBC0; _jc_save_wfdc_flag=dc; BIGipServerotn=1190134282.38945.0000; RAIL_EXPIRATION=1654898733358; RAIL_DEVICEID=fgyX4_b_575hbM4mMwN5TDkKGSgpZONpAeHBSBueU9Po9k7XJ8mC3NL0j2RrKZyMK29HDLOSk7fCpmXK7B9E_GneXYbWfTtQyd2OBTDnfXiZpQXNQb4S0ODwdrl4XGWeYdqgoYoexaLfTWbMmOKapgv9Z-iwx5x4; guidesStatus=off; highContrastMode=defaltMode; cursorStatus=off; BIGipServerpool_passport=165937674.50215.0000; route=6f50b51faa11b987e576cdb301e545c4; current_captcha_type=Z; _jc_save_toDate=2022-06-07; _jc_save_fromDate=2022-06-09; _jc_save_fromStation=%u6DF1%u5733%2CSZQ; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Pragma", "no-cache")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/resources/login.html")
	req.Header.Add("Sec-Fetch-Dest", "empty")
	req.Header.Add("Sec-Fetch-Mode", "cors")
	req.Header.Add("Sec-Fetch-Site", "same-origin")
	req.Header.Add("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36")
	req.Header.Add("X-Requested-With", "XMLHttpRequest")
	req.Header.Add("sec-ch-ua", "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"")
	req.Header.Add("sec-ch-ua-mobile", "?0")
	req.Header.Add("sec-ch-ua-platform", "\"macOS\"")

	res, err := client.Do(req)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(string(body))
}
