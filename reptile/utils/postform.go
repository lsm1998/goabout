package utils

import (
	"context"
	"crypto/tls"
	"io/ioutil"
	"net"
	"net/http"
	"strings"
)

func PostForm(ctx context.Context, url, host string, payloadStr string, header http.Header) ([]byte, error) {
	method := "POST"
	payload := strings.NewReader(payloadStr)
	defaultTransport := &http.Transport{
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
	client := &http.Client{
		Transport: defaultTransport,
	}
	req, err := http.NewRequest(method, url, payload)
	if err != nil {
		return nil, err
	}
	// req.Host = host
	req.Header = header
	res, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()
	body, err := ioutil.ReadAll(res.Body)
	if err != nil {
		return nil, err
	}
	return body, nil
}
