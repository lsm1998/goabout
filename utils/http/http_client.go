package http

import (
	"io/ioutil"
	"net/http"
	"net/url"
)

var defaultClient http.Client

type aboutHTTPClient struct {
	url     string
	request http.Request
}

func New(url string) *aboutHTTPClient {
	return &aboutHTTPClient{url: url}
}

func (c *aboutHTTPClient) SetBody(obj interface{}) *aboutHTTPClient {
	return c
}

func (c *aboutHTTPClient) SetPostForm(value url.Values) *aboutHTTPClient {
	c.request.PostForm = value
	return c
}

func (c *aboutHTTPClient) Post() (aboutHTTPClientResponse, error) {
	return c.do(http.MethodPost)
}

func (c *aboutHTTPClient) do(method string) (aboutHTTPClientResponse, error) {
	var err error
	var response *http.Response
	var result aboutHTTPClientResponse
	c.request.URL, err = url.ParseRequestURI(c.url)
	c.request.Method = method
	if err != nil {
		goto RESULT
	}
	response, err = defaultClient.Do(&c.request)
	if err != nil {
		goto RESULT
	}
	result.body, err = ioutil.ReadAll(response.Body)
	if err != nil {
		goto RESULT
	}
RESULT:
	return result, err
}

type aboutHTTPClientResponse struct {
	response *http.Response
	body     []byte
}

func (r *aboutHTTPClientResponse) GetBody() []byte {
	return r.body
}
