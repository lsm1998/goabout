package lock

import (
	"sync"
	"sync/atomic"
)

type MyOnce struct {
	state int32
	sync.Mutex
}

func (m *MyOnce) Do(f func()) {
	if atomic.LoadInt32(&m.state) == 1 {
		return
	}
	m.Lock()
	defer m.Unlock()
	if m.state == 0 {
		f()
		m.state = 1
	}
}
