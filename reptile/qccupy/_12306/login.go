package _12306

import (
	"context"
	"errors"
	"fmt"
	"net/http"
	"net/url"
	"reptile/qccupy"
	"reptile/qccupy/_12306/request"
	tinygoHttp "reptile/utils/http"
	"time"
)

func (t *kyfwClient) checkLoginVerify(username string) (string, error) {
	ctx, cancelFunc := context.WithTimeout(t.ctx, t.timeOut)
	defer cancelFunc()
	var values = url.Values{}
	values.Set("appid", "otn")
	values.Set("username", username)
	response, err := tinygoHttp.NewWithSkipVerify(fmt.Sprintf("%s/passport/web/checkLoginVerify", t.baseUrl())).
		SetHost(t.Host).
		SetPostForm(values).
		Header(*defaultHeader).
		AddCookie(defaultCookies...).
		SetHeader("Referer", "https://kyfw.12306.cn/otn/resources/login.html").
		Post(ctx)
	if err != nil {
		return "", err
	}
	var result = struct {
		ResultCode    int32  `json:"result_code"`
		ResultMessage string `json:"result_message"`
	}{}
	if err = response.Unmarshal(&result); err != nil {
		return "", err
	}
	if result.ResultCode != 0 {
		return "", errors.New(result.ResultMessage)
	}
	cookies := response.GetCookies()
	passportSession, _ := cookies.Get("_passport_session")
	return passportSession, nil
}

func (t *kyfwClient) LoginCheck(token qccupy.UserToken) (bool, error) {
	referer := fmt.Sprintf("https://kyfw.12306.cn/otn/leftTicket/init?random=%d", time.Now().UnixMilli())
	var resp request.QueryUserInfoResp
	ctx, cancelFunc := context.WithTimeout(t.ctx, t.timeOut)
	defer cancelFunc()
	values := url.Values{}
	values.Set("_json_att", "")
	response, err := tinygoHttp.NewWithSkipVerify(fmt.Sprintf("%s/otn/login/checkUser", t.baseUrl())).
		SetHost(t.Host).
		Header(*defaultHeader).
		SetPostForm(values).
		SetHeader("Referer", referer).
		SetHeader("If-Modified-Since", "0").
		SetHeader("Cache-Control", "no-cache").
		AddCookie(defaultCookies...).
		AddCookie(&http.Cookie{Name: "JSESSIONID", Value: token.GetSessionId()}).
		AddCookie(&http.Cookie{Name: "uKey", Value: ""}).
		AddCookie(&http.Cookie{Name: "tk", Value: token.GetToken()}).
		Post(ctx)
	if err != nil {
		return false, err
	}
	if err = response.Unmarshal(&resp); err != nil {
		return false, err
	}
	return resp.Data.Flag, nil
}

func (t *kyfwClient) UserLogin(username, password string) (qccupy.UserToken, error) {
	var err error
	passportSession, err := t.checkLoginVerify(username)
	if err != nil {
		return nil, err
	}
	token, err := request.SlidePasscode(username, passportSession)
	if err != nil {
		return nil, err
	}
	if token == "" {
		return nil, errors.New("webSlidePasscode fail,token is empty")
	}
	resp, err := request.GetSign(t.ctx, "", "", token)
	if err != nil {
		return nil, err
	}
	uaMtk, err := request.Login(resp.SessionId, username, password, resp.Sig, token, passportSession)
	if err != nil {
		return nil, err
	}
	t.UserToken.Tk, err = request.UaMtk(passportSession, uaMtk)
	if err != nil {
		return nil, err
	}
	t.UserToken.SessionId, err = request.UamAuthClient(t.UserToken.Tk)
	if err != nil {
		return nil, err
	}
	return t.UserToken, nil
}
