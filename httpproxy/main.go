package main

import (
	"bytes"
	"io/ioutil"
	"net/http"
	"net/http/httputil"
	"strconv"
)

func indexHandler(w http.ResponseWriter, r *http.Request) {
	reverseProxy := httputil.ReverseProxy{}
	reverseProxy.Director = func(request *http.Request) {
		request.Host = "www.baidu.com"
		request.URL.Host = "www.baidu.com"
		request.URL.Scheme = "http"
		request.URL.Path = r.RequestURI
	}
	reverseProxy.ModifyResponse = func(response *http.Response) error {
		body, err := ioutil.ReadAll(response.Body)
		if err != nil {
			return err
		}
		err = response.Body.Close()
		if err != nil {
			return err
		}
		response.Body = ioutil.NopCloser(bytes.NewReader(body))
		response.ContentLength = int64(len(body))
		response.Header.Set("Content-Type", "application/json")
		response.Header.Set("Content-Length", strconv.Itoa(len(body)))
		return nil
	}
	reverseProxy.ServeHTTP(w, r)
}

func main() {
	http.HandleFunc("/", indexHandler)
	http.ListenAndServe(":8080", nil)
}
