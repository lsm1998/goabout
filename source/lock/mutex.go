package lock

import (
	"runtime"
	"sync/atomic"
)

const (
	mutexLocked = 1 << iota // mutex is locked
	mutexWoken
	mutexStarving
	mutexWaiterShift      = iota
	starvationThresholdNs = 1e6
)

type MyMutex struct {
	state int32
	sema  uint32
}

func (m *MyMutex) Lock() {
	// CAS 抢锁 => 自旋 抢锁 => 加入sema休眠队列
	// 如何防止饥饿锁
	if atomic.CompareAndSwapInt32(&m.state, 0, mutexLocked) {
		return
	}
	m.lockSlow()
}

func (m *MyMutex) lockSlow() {
	var waitStartTime int64 // 等待时间
	starving := false       // 是否饥饿状态
	awoke := false          // 是否为唤醒状态
	iter := 0               // 自旋计数
	old := m.state
	for {
		// old&(mutexLocked|mutexStarving) == mutexLocked 判断 被锁且没有饥饿
		// runtime_canSpin 判断 是否可用继续自旋
		if old&(mutexLocked|mutexStarving) == mutexLocked && runtime_canSpin(iter) {
			// 如果等待队列有协程、锁没有设置唤醒状态，就努力设置唤醒状态
			// 这么做的好处是，当锁解锁的时候，不会去唤醒已经阻塞的协程，保证自己更大概率获取到锁
			if !awoke && old&mutexWoken == 0 && old>>mutexWaiterShift != 0 &&
				atomic.CompareAndSwapInt32(&m.state, old, old|mutexWoken) {
				awoke = true
			}
			runtime_doSpin()
			iter++
			old = m.state
			continue
		}
		new := old
		// 如果不是饥饿状态，则可尝试加锁
		if old&mutexStarving == 0 {
			new |= mutexLocked
		}
		// 如果被锁或者饥饿，则等待数量+1
		if old&(mutexLocked|mutexStarving) != 0 {
			new += 1 << mutexWaiterShift
		}

		// 如果自身已经到饥饿状态了，而且锁是被占用情况下，将锁改为饥饿状态
		if starving && old&mutexLocked != 0 {
			new |= mutexStarving
		}
		if awoke {
			// The goroutine has been woken from sleep,
			// so we need to reset the flag in either case.
			if new&mutexWoken == 0 {
				panic("sync: inconsistent mutex state")
			}
			new &^= mutexWoken
		}
		if atomic.CompareAndSwapInt32(&m.state, old, new) {
			if old&(mutexLocked|mutexStarving) == 0 {
				// 通过自旋抢到锁了
				break
			}
			// If we were already waiting before, queue at the front of the queue.
			queueLifo := waitStartTime != 0
			if waitStartTime == 0 {
				waitStartTime = runtime_nanotime()
			}
			// 加入休眠队列
			runtime_SemacquireMutex(&m.sema, queueLifo, 1)
			starving = starving || runtime_nanotime()-waitStartTime > starvationThresholdNs
			old = m.state
			if old&mutexStarving != 0 {
				// If this goroutine was woken and mutex is in starvation mode,
				// ownership was handed off to us but mutex is in somewhat
				// inconsistent state: mutexLocked is not set and we are still
				// accounted as waiter. Fix that.
				if old&(mutexLocked|mutexWoken) != 0 || old>>mutexWaiterShift == 0 {
					panic("sync: inconsistent mutex state")
				}
				delta := int32(mutexLocked - 1<<mutexWaiterShift)
				if !starving || old>>mutexWaiterShift == 1 {
					// Exit starvation mode.
					// Critical to do it here and consider wait time.
					// Starvation mode is so inefficient, that two goroutines
					// can go lock-step infinitely once they switch mutex
					// to starvation mode.
					delta -= mutexStarving
				}
				atomic.AddInt32(&m.state, delta)
				break
			}
			awoke = true
			iter = 0
		} else {
			old = m.state
		}
	}
}

// runtime_canSpin 是否可用继续自旋
func runtime_canSpin(iter int) bool {
	// 传递过来的iter大等于4或者cpu核数小等于1
	// 最大逻辑处理器大于1，至少有个本地的P队列
	//if iter >= 4 || runtime.NumGoroutine() <= 1 || gomaxprocs <= int32(sched.npidle+sched.nmspinning)+1 {
	//	return false
	//}
	// 本地的P队列可运行G队列为空
	//if p := getg().m.p.ptr(); !runqempty(p) {
	//	return false
	//}

	// todo simple implement
	if iter >= 4 || runtime.NumGoroutine() <= 1 {
		return false
	}
	return true
}

// runtime_doSpin 自旋
func runtime_doSpin() {
	// todo simple implement
	for i := 0; i < 500; i++ {
		// nop
	}
}

func runtime_nanotime() int64 {
	return 1
}

func runtime_SemacquireMutex(s *uint32, lifo bool, skipframes int) {
	// todo
}
