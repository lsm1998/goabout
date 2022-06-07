package http

import "net/http"

type Cookies []*http.Cookie

func (cs *Cookies) Set(c *http.Cookie) {
	for index, val := range *cs {
		if val.Name == c.Name {
			(*cs)[index] = c
			return
		}
	}
	*cs = append(*cs, c)
}

func (cs *Cookies) Get(key string) (string, bool) {
	for _, v := range *cs {
		if v.Name == key {
			return v.Value, true
		}
	}
	return "", false
}
