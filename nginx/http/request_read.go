package http

import (
	"bufio"
	"io"
	"net"
	"strconv"
	"strings"
)

type requestRead struct {
	requestLine
	reader  io.Reader
	lines   []string
	request HttpRequest
}

type requestLine struct {
	Scheme     string
	RawQuery   string
	Method     string
	Version    string
	RequestURI string
}

func NewHttpRequest(c net.Conn) *HttpRequest {
	read := requestRead{}
	return read.buildHttpRequest(c)
}

func (r *requestRead) readRequestLines(c net.Conn) bool {
	reader := bufio.NewReader(c)
	for {
		byteLine, _, err := reader.ReadLine()
		line := string(byteLine)
		if err != nil {
			return false
		}
		if line == "" {
			break
		}
		r.lines = append(r.lines, line)
	}
	r.reader = reader
	return true
}

func (r *requestRead) parseHttpRequest(request *HttpRequest, c net.Conn) bool {
	// 解析请求行
	var ok bool
	if !r.readRequestLines(c) {
		return false
	}
	request.Method, request.RequestURI, request.Proto, ok = r.parseHTTPLine(r.lines[0])
	if !ok {
		return false
	}
	if !r.parseHTTPHead(request, r.lines[1:]) {
		return false
	}

	if !r.parseHTTPBody(request) {
		return false
	}
	request.Host = request.Header.Get("Host")
	return true
}

func (r *requestRead) parseHTTPLine(line string) (method, requestURI, version string, ok bool) {
	list := strings.Split(line, " ")
	if len(list) != 3 {
		return
	}
	return list[0], list[1], list[2], true
}

func (r *requestRead) parseHTTPVersion() (major, minor int) {
	switch r.Version {
	case "HTTP/1.1":
		return 1, 1
	case "HTTP/1.0":
		return 1, 0
	}
	if !strings.HasPrefix(r.Version, "HTTP/") {
		return 0, 0
	}
	if len(r.Version) != len("HTTP/X.Y") {
		return 0, 0
	}
	if r.Version[6] != '.' {
		return 0, 0
	}
	maj, err := strconv.ParseUint(r.Version[5:6], 10, 0)
	if err != nil {
		return 0, 0
	}
	min, err := strconv.ParseUint(r.Version[7:8], 10, 0)
	if err != nil {
		return 0, 0
	}
	return int(maj), int(min)
}

func (r *requestRead) parseHTTPHead(request *HttpRequest, list []string) bool {
	for _, v := range list {
		index := strings.Index(v, ": ")
		if index > 0 {
			request.Header.Set(v[0:index], v[index+2:])
		}
	}
	return true
}

func (r *requestRead) parseHTTPBody(request *HttpRequest) bool {
	l := request.Header.Get("Content-Length")
	if l == "" {
		l = "0"
	}
	le, err := strconv.Atoi(l)
	if err != nil {
		return false
	}
	request.Body = make([]byte, le, le)
	_, err = r.reader.Read(request.Body)
	request.ContentLength = int64(le)
	//rc, ok := r.reader.(io.ReadCloser)
	//if !ok {
	//	rc = io.NopCloser(r.reader)
	//}
	//request.Body = rc
	return true
}

func (r *requestRead) buildHttpRequest(c net.Conn) *HttpRequest {
	var request = &HttpRequest{
		Header: map[string][]string{},
	}
	if !r.parseHttpRequest(request, c) {
		return nil
	}
	request.RemoteAddr = c.RemoteAddr().String()
	request.Major, request.Minor = r.parseHTTPVersion()
	request.URL, _ = Parse(request.RequestURI)
	return request
}
