package request

import "net/http"

func GetCookieVal(cs []*http.Cookie, key string) string {
	for _, v := range cs {
		if v.Name == key {
			return v.Value
		}
	}
	return ""
}
