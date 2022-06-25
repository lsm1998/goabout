package lock

import (
	"os"
	"sync"
	"sync/atomic"
)

type ReentrantLock struct {
	sync.Mutex
	cond         *sync.Cond
	reentryCount int32
	waitCount    int32
	ownerGid     int64
}

func NewReentryLock() *ReentrantLock {
	var r = &ReentrantLock{}
	r.cond = sync.NewCond(r)
	return r
}

func (r *ReentrantLock) isOwner() bool {
	return r.ownerGid == int64(os.Getgid())
}

func (r *ReentrantLock) TryLock() bool {
	// 已经被其他协程占有
	if !r.isOwner() && atomic.LoadInt32(&r.waitCount) > 0 {
		return false
	} else if !r.isOwner() { // 无任何协程占有
		if atomic.CompareAndSwapInt32(&r.reentryCount, 0, 1) {
			r.Mutex.Lock()
			r.reentryCount = 1
			r.ownerGid = int64(os.Getgid())
			return true
		}
		return false
	} else { // 占用者为当前协程
		r.Lock()
		return true
	}
}

func (r *ReentrantLock) Lock() {
	// 无任何协程占有
	if atomic.LoadInt64(&r.ownerGid) == 0 &&
		atomic.CompareAndSwapInt32(&r.reentryCount, 0, 1) {
		r.Mutex.Lock()
		r.reentryCount = 1
		r.ownerGid = int64(os.Getgid())
	} else if r.isOwner() { // 占用者为当前协程
		r.reentryCount++
	} else { // 已经被其他协程占有
		atomic.AddInt32(&r.waitCount, 1)
		r.cond.Wait()
		atomic.AddInt32(&r.waitCount, -1)
	}
}

func (r *ReentrantLock) UnLock() {
	if !r.isOwner() {
		return
	}
	if r.reentryCount == 0 {
		r.Mutex.Unlock()
	} else {
		r.reentryCount--
	}
}
