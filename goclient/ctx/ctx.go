package ctx

import (
	"math/rand"
	"time"
)

type WorkCtx struct {
	Id         string
	Host       string
	Port       uint16
	LoopCount  int
	MaxBodyLen int
	MinBodyLen int
	Interval   time.Duration
}

func (c *WorkCtx) GetByteData() []byte {
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	length := c.MinBodyLen + r.Intn(c.MaxBodyLen-c.MinBodyLen)
	result := make([]byte, length)
	for i := 0; i < length; i++ {
		result[i] = byte(i % 127)
	}
	return result
}
