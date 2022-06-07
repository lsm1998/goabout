package http

import (
	"bytes"
	"context"
	"crypto/tls"
	"encoding/json"
	"errors"
	"io"
	"io/ioutil"
	"net"
	"net/http"
	"net/url"
	"strings"
	"time"
)

var (
	codeMustErr = errors.New("HTTP code mismatch")

	defaultClient = &http.Client{
		Transport: newTransport(),
	}
)

type muteHttpClient struct {
	url      string
	mustCode int
	method   string
	body     []byte
	request  *http.Request
	client   *http.Client
	useTime  int64
}

func New(url string) *muteHttpClient {
	return &muteHttpClient{url: url, request: &http.Request{Header: map[string][]string{}}, client: defaultClient}
}

func NewWithSkipVerify(url string) *muteHttpClient {
	transport := newTransport()
	transport.TLSClientConfig = &tls.Config{InsecureSkipVerify: true}
	client := &http.Client{Transport: transport}
	return &muteHttpClient{url: url, request: &http.Request{Header: map[string][]string{}}, client: client}
}

func NewWithTransport(url string, transport *http.Transport) *muteHttpClient {
	return &muteHttpClient{url: url, request: &http.Request{Header: map[string][]string{}}, client: &http.Client{Transport: transport}}
}

func newTransport() *http.Transport {
	return &http.Transport{
		DialContext: func(ctx context.Context, network, addr string) (net.Conn, error) {
			var d net.Dialer
			c, err := d.DialContext(ctx, network, addr)
			if err != nil {
				return nil, err
			}
			return c, nil
		},
		TLSClientConfig: &tls.Config{InsecureSkipVerify: false},
	}
}

func (c *muteHttpClient) SetPostFormData(data []byte) *muteHttpClient {
	c.request.Header["Content-Type"] = []string{"application/x-www-form-urlencoded"}
	c.body = data
	return c
}

func (c *muteHttpClient) SetBodyJSON(obj interface{}) *muteHttpClient {
	c.body, _ = json.Marshal(obj)
	c.request.Header["Content-Type"] = []string{"application/json"}
	c.request.Body = io.NopCloser(bytes.NewReader(c.body))
	return c
}

func (c *muteHttpClient) SetHost(host string) *muteHttpClient {
	c.request.Header["Host"] = []string{host}
	c.request.Host = host
	return c
}

func (c *muteHttpClient) AddCookie(cookies ...*http.Cookie) *muteHttpClient {
	for _, cookie := range cookies {
		c.request.AddCookie(cookie)
	}
	return c
}

func (c *muteHttpClient) AddHeader(key, value string) *muteHttpClient {
	if _, ok := c.request.Header[key]; ok {
		c.request.Header[key] = append(c.request.Header[key], value)
	} else {
		c.request.Header[key] = []string{value}
	}
	return c
}

func (c *muteHttpClient) SetHeader(key, value string) *muteHttpClient {
	c.request.Header[key] = []string{value}
	return c
}

func (c *muteHttpClient) SetQuery(key, value string) *muteHttpClient {
	c.request.URL, _ = url.Parse(c.url)
	values, _ := url.ParseQuery(c.request.URL.RawQuery)
	if values == nil {
		values = make(url.Values)
	}
	values.Set(key, value)
	if c.request.URL.RawQuery == "" {
		c.url = c.request.URL.String() + "?" + values.Encode()
	} else {
		c.url = strings.TrimRight(c.request.URL.String(), c.request.URL.RawQuery) + values.Encode()
	}
	return c
}

func (c *muteHttpClient) Header(header http.Header) *muteHttpClient {
	if len(header) == 0 {
		c.request.Header = make(http.Header)
	} else {
		c.request.Header = header
	}
	return c
}

func (c *muteHttpClient) SetPostForm(value url.Values) *muteHttpClient {
	c.request.Header["Content-Type"] = []string{"application/x-www-form-urlencoded"}
	c.request.PostForm = value
	return c
}

func (c *muteHttpClient) MustCode(code int) *muteHttpClient {
	c.mustCode = code
	return c
}

func (c *muteHttpClient) Post(ctx context.Context) (muteHttpResponse, error) {
	return c.do(http.MethodPost, ctx)
}

func (c *muteHttpClient) Get(ctx context.Context) (muteHttpResponse, error) {
	return c.do(http.MethodGet, ctx)
}

func (c *muteHttpClient) Put(ctx context.Context) (muteHttpResponse, error) {
	return c.do(http.MethodPut, ctx)
}

func (c *muteHttpClient) Delete(ctx context.Context) (muteHttpResponse, error) {
	return c.do(http.MethodDelete, ctx)
}

func (c *muteHttpClient) Options(ctx context.Context) (muteHttpResponse, error) {
	return c.do(http.MethodOptions, ctx)
}

func (c *muteHttpClient) Patch(ctx context.Context) (muteHttpResponse, error) {
	return c.do(http.MethodPatch, ctx)
}

func (c *muteHttpClient) do(method string, ctx context.Context) (muteHttpResponse, error) {
	now := time.Now().UnixMilli()
	var err error
	var response *http.Response
	var result muteHttpResponse
	c.method = method
	c.request = c.request.WithContext(ctx)
	c.request.URL, err = url.ParseRequestURI(c.url)
	c.request.Method = method
	if len(c.body) == 0 && len(c.request.PostForm) > 0 {
		c.body = []byte(c.request.PostForm.Encode())
		c.request.Body = io.NopCloser(bytes.NewReader(c.body))
	}
	if err != nil {
		goto RESULT
	}
	response, err = c.client.Do(c.request)
	if err != nil {
		goto RESULT
	}
	result.body, err = ioutil.ReadAll(response.Body)
	if err != nil {
		goto RESULT
	}
	response.Body.Close()
	if c.mustCode > 0 && response.StatusCode != c.mustCode {
		err = codeMustErr
		goto RESULT
	}
	c.useTime = time.Now().UnixMilli() - now
RESULT:
	result.client = *c
	result.response = response
	return result, err
}