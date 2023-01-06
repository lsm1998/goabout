package http

import (
	"mime/multipart"
)

type HttpRequest struct {
	Header        Header
	Host          string
	Proto         string
	RequestURI    string
	Method        string
	RemoteAddr    string
	ContentLength int64
	Close         bool
	Form          Values
	PostForm      Values
	MultipartForm *multipart.Form
	URL           *URL
	Major         int
	Minor         int
	Body          []byte
	// Body io.ReadCloser
}

func (r *HttpRequest) Query(key string) string {
	return ""
}

func (r *HttpRequest) UserAgent() string {
	return r.Header.Get("User-Agent")
}

func (r *HttpRequest) Referer() string {
	return r.Header.Get("Referer")
}

var multipartByReader = &multipart.Form{
	Value: make(map[string][]string),
	File:  make(map[string][]*multipart.FileHeader),
}
