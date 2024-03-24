package http

// Header MIMEHeader
type Header map[string][]string

func (h Header) Add(key, value string) {
	key = CanonicalMIMEHeaderKey(key)
	h[key] = append(h[key], value)
}

func (h Header) Set(key, value string) {
	h[CanonicalMIMEHeaderKey(key)] = []string{value}
}

func (h Header) Get(key string) string {
	v := h[CanonicalMIMEHeaderKey(key)]
	if len(v) == 0 {
		return ""
	}
	return v[0]
}

func (h Header) Values(key string) []string {
	return h[CanonicalMIMEHeaderKey(key)]
}
