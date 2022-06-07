package _12306

import (
	"encoding/base64"
	"github.com/tjfoc/gmsm/sm4"
)

func encryptEcbV2(data, key string) string {
	cbcMsg, err := sm4.Sm4Ecb([]byte(key), []byte(data), true)
	if err != nil {
		return ""
	}
	return base64.StdEncoding.EncodeToString(cbcMsg)
}
