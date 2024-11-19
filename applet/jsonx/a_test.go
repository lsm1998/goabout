package jsonx

import (
	"encoding/json"
	"errors"
	"strconv"
	"strings"
	"testing"
)

type Call struct {
	CallId int32  `json:"callId"` // 呼叫ID
	Caller string `json:"caller"` // 呼叫人
	Callee string `json:"callee"` // 被呼叫人
}

func TestUnMap(t *testing.T) {
}

func BenchmarkJsonUnmarshal(b *testing.B) {
	// 128G

	// 635.9 ns/op
	str := `{"callId":123, "caller" :"17774582028", "callee":"17774582028"}`
	for i := 0; i < b.N; i++ {
		var c Call
		if err := json.Unmarshal([]byte(str), &c); err != nil {
			b.Fatal(err)
		}
	}
}

func BenchmarkA(b *testing.B) {
	// 59.44 ns/op
	str := `{"callId":123, "caller" :"17774582028", "callee":"17774582028"}`
	for i := 0; i < b.N; i++ {
		var c Call
		if err := SplitUnmarshal(str, &c); err != nil {
			b.Fatal(err)
		}
	}
}

func SplitUnmarshal(str string, c *Call) error {
	// 去掉前后大括号
	str = (strings.TrimSpace(str))[1 : len(str)-1]

	arr := strings.SplitN(str, ",", 3)
	if len(arr) != 3 {
		return errors.New("len(n) != 3")
	}
	for i := 0; i < 3; i++ {
		index := strings.Index(arr[i], ":")
		if index == -1 {
			return errors.New("key not found")
		}
		key := strings.TrimSpace(arr[i][:index])
		value := strings.TrimSpace(arr[i][index+1:])
		switch key {
		case `"callId"`:
			val, _ := strconv.ParseInt(value, 10, 64)
			c.CallId = int32(val)
		case `"caller"`:
			c.Caller = value
		case `"callee"`:
			c.Callee = value
		}
	}
	return nil
}
