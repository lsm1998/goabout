package custom

import "sync"

// MutexChan 基于互斥锁实现的Chan
type MutexChan struct {
	buf        []interface{}
	length     int
	close      bool
	readMutex  sync.Mutex
	writeMutex sync.Mutex
	readCond   *sync.Cond
	writeCond  *sync.Cond
}

func MakeMutexChan(cap int) *MutexChan {
	c := &MutexChan{
		buf:        make([]interface{}, cap, cap),
		length:     0,
		close:      false,
		readMutex:  sync.Mutex{},
		writeMutex: sync.Mutex{},
	}
	c.readCond = sync.NewCond(&c.readMutex)
	c.writeCond = sync.NewCond(&c.writeMutex)
	return c
}

func (m *MutexChan) Send(obj interface{}) {
	m.writeMutex.Lock()
	defer m.writeMutex.Unlock()
	if m.close {
		panic("The MutexChan has been closed")
	}
	// 是否已满
	if m.length == cap(m.buf) {
		m.writeCond.Wait()
	}
	m.buf[m.length] = obj
	m.length++
	m.readCond.Signal()
}

func (m *MutexChan) Recv() interface{} {
	m.readMutex.Lock()
	defer func() {
		m.readMutex.Unlock()
	}()
	if m.close {
		return nil
	}
	// 是否已空
	if m.length == 0 {
		m.readCond.Wait()
	}
	result := m.buf[m.length-1]
	m.length--
	m.writeCond.Signal()
	return result
}

func (m *MutexChan) Len() int {
	return m.length
}

func (m *MutexChan) Close() {
	if m.close {
		panic("repeat close")
	}
	m.close = true
}
