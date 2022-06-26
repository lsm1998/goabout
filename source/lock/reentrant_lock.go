package lock

import (
	"bytes"
	"runtime"
	"strconv"
	"sync"
)

type ReentrantLock struct {
	sync.Mutex
	reentryCount int32
	ownerGid     uint64
}

func goroutineID() uint64 {
	b := make([]byte, 64)
	b = b[:runtime.Stack(b, false)]
	b = bytes.TrimPrefix(b, []byte("goroutine "))
	b = b[:bytes.IndexByte(b, ' ')]
	n, _ := strconv.ParseUint(string(b), 10, 64)
	return n
}

func (r *ReentrantLock) isOwner() bool {
	return r.ownerGid == goroutineID()
}

func (r *ReentrantLock) TryLock() bool {
	if r.ownerGid == 0 && r.Mutex.TryLock() {
		r.reentryCount = 1
		r.ownerGid = goroutineID()
		return true
	}
	if r.isOwner() {
		r.Lock()
		return true
	}
	return false
}

func (r *ReentrantLock) Lock() {
	if r.isOwner() {
		r.reentryCount++
	} else {
		r.Mutex.Lock()
		r.reentryCount = 1
		r.ownerGid = goroutineID()
	}
}

func (r *ReentrantLock) UnLock() {
	if !r.isOwner() {
		return
	}
	r.reentryCount--
	if r.reentryCount == 0 {
		r.ownerGid = 0
		r.Mutex.Unlock()
	}
}
