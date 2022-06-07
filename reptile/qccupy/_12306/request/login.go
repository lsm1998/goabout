package request

import (
	"encoding/base64"
	"encoding/json"
	"errors"
	"fmt"
	"github.com/spf13/cast"
	"github.com/tjfoc/gmsm/sm4"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
	"time"
)

const (
	SM4Key = "tiekeyuankp12306"
)

func SlidePasscode(username, passportSession string) (string, error) {
	cookieStr := fmt.Sprintf(`guidesStatus=off; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerotn=1173357066.50210.0000; BIGipServerpool_passport=182714890.50215.0000; _passport_session=%s; uKey=`, passportSession)
	url := "https://kyfw.12306.cn/passport/web/slide-passcode"
	method := "POST"
	payload := strings.NewReader(`slideMode=1&appid=otn&username=` + username)
	client := &http.Client{}
	req, err := http.NewRequest(method, url, payload)
	if err != nil {
		return "", err
	}
	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", cookieStr)
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/resources/login.html")
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
		return "", err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return "", err
	}
	var result = struct {
		Token string `json:"if_check_slide_passcode_token"`
	}{}
	if err = json.Unmarshal(body, &result); err != nil {
		return "", err
	}
	return result.Token, nil
}

func Login(sessionId, username, password, sig, token, passportSession string) (string, error) {
	var values = url.Values{}
	values.Set("sessionId", sessionId)
	values.Set("username", username)
	values.Set("password", "@"+encryptEcbV2(password, SM4Key))
	values.Set("sig", sig)
	values.Set("if_check_slide_passcode_token", token)
	values.Set("scene", "nc_login")
	values.Set("tk", "")
	values.Set("checkMode", "1")
	values.Set("appid", "otn")
	payload := strings.NewReader(values.Encode())
	client := &http.Client{}
	req, err := http.NewRequest("POST", "https://kyfw.12306.cn/passport/web/login", payload)
	if err != nil {
		return "", err
	}
	req.Header.Add("Accept", "application/json, text/javascript, */*; q=0.01")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", "_passport_session=; guidesStatus=off; _jc_save_wfdc_flag=dc; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ; _jc_save_fromStation=%u6DF1%u5733%2CIOQ; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; _jc_save_fromDate=2022-06-07; _jc_save_toDate=2022-06-07; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerotn=1173357066.50210.0000; BIGipServerpool_passport=182714890.50215.0000; _passport_session=6ba212db41e742d5b1a76f4382288a109871; uKey=")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/resources/login.html")
	req.Header.Add("Sec-Fetch-Dest", "empty")
	req.Header.Add("Sec-Fetch-Mode", "cors")
	req.Header.Add("Sec-Fetch-Site", "same-origin")
	req.Header.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36")
	req.Header.Add("isPasswordCopy", "N")
	req.Header.Add("sec-ch-ua", "\" Not A;Brand\";v=\"99\", \"Chromium\";v=\"102\", \"Google Chrome\";v=\"102\"")
	req.Header.Add("sec-ch-ua-mobile", "?0")
	req.Header.Add("sec-ch-ua-platform", "\"Windows\"")
	res, err := client.Do(req)
	if err != nil {
		return "", err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return "", err
	}
	var result = struct {
		ResultCode    int32  `json:"result_code"`
		ResultMessage string `json:"result_message"`
		UaMtk         string `json:"uamtk"`
	}{}
	if err = json.Unmarshal(body, &result); err != nil {
		return "", err
	}
	if result.ResultCode != 0 {
		return "", errors.New(result.ResultMessage)
	}
	return result.UaMtk, nil
}

func encryptEcbV2(data, key string) string {
	cbcMsg, err := sm4.Sm4Ecb([]byte(key), []byte(data), true)
	if err != nil {
		return ""
	}
	return base64.StdEncoding.EncodeToString(cbcMsg)
}

func UaMtk(passportSession, uaMtk string) (string, error) {
	payload := strings.NewReader(`appid=otn`)
	client := &http.Client{}
	req, err := http.NewRequest("POST", "https://kyfw.12306.cn/passport/web/auth/uamtk", payload)
	if err != nil {
		return "", err
	}
	cookieStrPrefix := fmt.Sprintf("_passport_session=%s; uamtk=%s; ", passportSession, uaMtk)
	req.Header.Add("Accept", "application/json, text/javascript, */*; q=0.01")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", cookieStrPrefix+"guidesStatus=off; _jc_save_wfdc_flag=dc; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ; _jc_save_fromStation=%u6DF1%u5733%2CIOQ; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; _jc_save_fromDate=2022-06-07; _jc_save_toDate=2022-06-07; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerotn=1173357066.50210.0000; BIGipServerpool_passport=182714890.50215.0000; _passport_session=f352beea24d84510ac4c5a33dad9dadf0238; uKey=41bf7fa555ebbc037a1e9eac84039433754024667424534b0e2f5161ca6873a7")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/passport?redirect=/otn/login/userLogin")
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
		return "", err
	}
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return "", err
	}
	var result = struct {
		Apptk         interface{} `json:"apptk"`
		Newapptk      string      `json:"newapptk"`
		ResultCode    int32       `json:"result_code"`
		ResultMessage string      `json:"result_message"`
	}{}
	if err = json.Unmarshal(body, &result); err != nil {
		return "", err
	}
	if result.ResultCode != 0 {
		return "", errors.New(result.ResultMessage)
	}
	return result.Newapptk, nil
}

func UamAuthClient(token string) (string, error) {
	payload := strings.NewReader(`tk=` + token)
	client := &http.Client{}
	req, err := http.NewRequest("POST", "https://kyfw.12306.cn/otn/uamauthclient", payload)
	if err != nil {
		return "", err
	}
	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", "guidesStatus=off; _jc_save_wfdc_flag=dc; _jc_save_toStation=%u6DF1%u5733%u576A%u5C71%2CIFQ; _jc_save_fromStation=%u6DF1%u5733%2CIOQ; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; _jc_save_fromDate=2022-06-07; _jc_save_toDate=2022-06-07; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerotn=1173357066.50210.0000; BIGipServerpool_passport=182714890.50215.0000; uKey=")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/passport?redirect=/otn/login/userLogin")
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
		return "", err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return "", err
	}
	var result = struct {
		ResultCode    int32  `json:"result_code"`
		ResultMessage string `json:"result_message"`
	}{}
	if err = json.Unmarshal(body, &result); err != nil {
		return "", err
	}
	return GetCookieVal(res.Cookies(), "JSESSIONID"), nil
}

func CheckUser(jSessionId, token string) (bool, error) {
	payload := strings.NewReader(`_json_att=`)
	client := &http.Client{}
	req, err := http.NewRequest("POST", "https://kyfw.12306.cn/otn/login/checkUser", payload)
	if err != nil {
		return false, err
	}
	cookieStrPrefix := fmt.Sprintf("JSESSIONID=%s; tk=%s; ", jSessionId, token)
	req.Header.Add("Accept", "*/*")
	req.Header.Add("Accept-Language", "zh-CN,zh;q=0.9")
	req.Header.Add("Cache-Control", "no-cache")
	req.Header.Add("Connection", "keep-alive")
	req.Header.Add("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8")
	req.Header.Add("Cookie", cookieStrPrefix+"guidesStatus=off; _jc_save_wfdc_flag=dc; RAIL_EXPIRATION=1654834090107; RAIL_DEVICEID=puPTohMR6HlTKpF0gAuIJtD6GWkb3Vw4qK7igkYG39SRmfe-S6vnz0EbjiZJSx2nLLKxi5NePbULoDvNGHy2-pV4Nkfg77lROKAXCoFJxy-VDz8MiyxO9UVYulE-Afqoyqg7cVJf-lhjkunQQiQqUSusKnS9Qpvi; BIGipServerpassport=988283146.50215.0000; highContrastMode=defaltMode; cursorStatus=off; current_captcha_type=Z; route=6f50b51faa11b987e576cdb301e545c4; BIGipServerpool_passport=182714890.50215.0000; BIGipServerotn=2246574346.64545.0000")
	req.Header.Add("If-Modified-Since", "0")
	req.Header.Add("Origin", "https://kyfw.12306.cn")
	req.Header.Add("Referer", "https://kyfw.12306.cn/otn/leftTicket/init?random="+cast.ToString(time.Now().UnixMilli()))
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
		return false, err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return false, err
	}
	var resp QueryUserInfoResp
	if err = json.Unmarshal(body, &resp); err != nil {
		return false, err
	}
	return resp.Data.Flag, nil
}
