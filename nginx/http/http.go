package http

import (
	"bufio"
	"io"
	"net"
	"strconv"
	"strings"
)

type requestLine struct {
	Scheme   string
	Host     string
	Path     string
	RawQuery string
	Method   string
	Version  string
}

type header = map[string]string

type HttpRequest struct {
	requestLine
	header
	body []byte
	c    net.Conn
}

func NewHttpRequest(c net.Conn) *HttpRequest {
	reader := bufio.NewReader(c)
	var lineList []string
	for {
		byteLine, _, err := reader.ReadLine()
		line := string(byteLine)
		if err != nil {
			return nil
		}
		if line == "" {
			break
		}
		lineList = append(lineList, line)
	}
	var request = &HttpRequest{
		c:      c,
		header: make(map[string]string),
	}
	_ = request.parseHttpRequest(lineList)
	_ = request.parsePath()
	return request
}

func (h *HttpRequest) parseHttpRequest(lineList []string) error {
	// 解析请求行
	err := h.parseHttpLine(lineList[0])
	if err != nil {
		return nil
	}
	err = h.parseHttpHead(lineList[1:])
	if err != nil {
		return nil
	}
	err = h.parseHttpBody(h.c)
	if err != nil {
		return nil
	}
	return nil
}

func (h *HttpRequest) parseHttpLine(line string) error {
	list := strings.Split(line, " ")
	if len(list) != 3 {
		return parseHttpErr
	}
	h.Method = list[0]
	h.Path = list[1]
	h.Version = list[2]
	return nil
}

func (h *HttpRequest) parseHttpHead(list []string) error {
	for _, v := range list {
		index := strings.Index(v, ": ")
		if index > 0 {
			h.header[v[0:index]] = v[index+2:]
		}
	}
	return nil
}

func (h *HttpRequest) parseHttpBody(conn io.Reader) error {
	l, ok := h.header["Content-Length"]
	if !ok {
		return nil
	}
	le, err := strconv.Atoi(l)
	if err != nil {
		return err
	}
	h.body = make([]byte, le, le)
	_, err = conn.Read(h.body)
	return err
}

func (h *HttpRequest) parsePath() error {
	h.Host = h.header["Host"]
	// h.RawQuery = path
	// h.Path = path
	return nil
}
