package http

import (
	"bytes"
	"compress/gzip"
	"io/ioutil"
)

//GZIPEn gzip加密
func GZIPEn(str []byte) ([]byte, error) {
	var b bytes.Buffer
	gz := gzip.NewWriter(&b)
	if _, err := gz.Write(str); err != nil {
		return nil, err
	}
	if err := gz.Flush(); err != nil {
		return nil, err
	}
	if err := gz.Close(); err != nil {
		return nil, err
	}
	return b.Bytes(), nil
}

//GZIPDe gzip解密
func GZIPDe(in []byte) ([]byte, error) {
	reader, err := gzip.NewReader(bytes.NewReader(in))
	if err != nil {
		var out []byte
		return out, err
	}
	defer reader.Close()
	return ioutil.ReadAll(reader)
}
