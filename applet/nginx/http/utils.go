package http

import (
	"net/http"
	"strings"
	"time"
)

func GetSuffix(src string) string {
	index := strings.LastIndex(src, ".")
	if index == -1 {
		return ""
	}
	return src[index+1:]
}

func GetGMT(t time.Time) string {
	return t.Format(http.TimeFormat)
}
