package http

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net"
	"os"
	"strings"
	"time"
)

const (
	HTMLType     = "text/html; charset=utf-8"
	XMLType      = "text/xml; charset=utf-8"
	JSONType     = "application/json; charset=utf-8"
	TextType     = "text/plain; charset=utf-8"
	FormType     = "multipart/form-data"
	ImagePngType = "image/png"
	ImageJpgType = "image/jpeg"
	ImageGifType = "image/gif"
)

var responseCode = map[int]string{
	101: "Protocols",
	200: "OK",
	400: "Bad Request",
	404: "Not Found",
	500: "Internal Server Error",
}

type HttpResponse struct {
	conn            net.Conn
	code            int
	version         string
	Server          string
	contentEncoding string
	date            string
	body            []byte
	responseHead    map[string]string
}

func NewHttpResponse(conn net.Conn) *HttpResponse {
	return &HttpResponse{conn: conn, Server: "lsm", contentEncoding: "gzip", version: "HTTP/1.1", responseHead: make(map[string]string)}
}

func (h *HttpResponse) Ok() *HttpResponse {
	h.code = 200
	return h
}

func (h *HttpResponse) SetBody(body []byte) *HttpResponse {
	h.body, _ = GZIPEn(body)
	return h.SetResponseHead("Content-Length", fmt.Sprintf("%d", len(h.body)))
}

func (h *HttpResponse) SetResponseHead(key, value string) *HttpResponse {
	h.responseHead[key] = value
	return h
}

func (h *HttpResponse) SetContentType(contentType string) *HttpResponse {
	return h.SetResponseHead("Content-Type", contentType)
}

func (h *HttpResponse) SetCode(code int) *HttpResponse {
	h.code = code
	return h
}

func (h *HttpResponse) Do() (int, error) {
	var buff bytes.Buffer
	buff.WriteString(fmt.Sprintf("%s %d %s\r\n", h.version, h.code, responseCode[h.code]))
	buff.WriteString(fmt.Sprintf("Content-Encoding: %s\r\n", h.contentEncoding))
	buff.WriteString(fmt.Sprintf("Date: %s\r\n", GetGMT(time.Now())))
	for k, v := range h.responseHead {
		buff.WriteString(fmt.Sprintf("%s: %s\r\n", k, v))
	}
	buff.WriteString("\r\n")
	buff.Write(h.body)
	return h.conn.Write(buff.Bytes())
}

func (h *HttpResponse) Close() {
	h.conn.Close()
}

func (h *HttpResponse) SendHTML(content string) {
	n, err := h.Ok().SetContentType(HTMLType).SetBody([]byte(content)).Do()
	fmt.Println(n, err)
}

func (h *HttpResponse) BadRequest() {
	_, _ = h.SetCode(400).Do()
}

func (h *HttpResponse) SendStatic(path string) (int, error) {
	if strings.HasPrefix(path, "/") {
		path = path[1:]
	}
	stat, err := os.Stat(path)
	if err != nil && !os.IsExist(err) {
		return -1, nil
	}
	if stat.IsDir() {
		return -1, nil
	}
	var contentType string
	switch GetSuffix(stat.Name()) {
	case "jpg":
		fallthrough
	case "jpeg":
		fallthrough
	case "JPG":
		fallthrough
	case "JPEG":
		contentType = ImageJpgType
	case "png":
		fallthrough
	case "PNG":
		contentType = ImagePngType
	case "gif":
		fallthrough
	case "GIF":
		contentType = ImageGifType
	case "html":
		contentType = HTMLType
	}
	file, err := os.Open(path)
	if err != nil {
		return 0, err
	}
	defer file.Close()
	body, err := ioutil.ReadAll(file)
	if err != nil {
		return 0, err
	}
	return h.Ok().SetContentType(contentType).SetBody(body).Do()
}

func (h *HttpResponse) JSON(code int, data interface{}) {
	result, err := json.Marshal(data)
	if err != nil {
		return
	}
	_, _ = h.SetCode(code).SetContentType(JSONType).SetBody(result).Do()
}
