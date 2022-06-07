package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"strings"
)

func main() {
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
