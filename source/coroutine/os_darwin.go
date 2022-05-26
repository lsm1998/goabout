package main

/**
mac系统对线程的额外描述
*/
type mOS struct {
	initialized bool
	mutex       pthreadmutex
	cond        pthreadcond
	count       int
}

type pthreadmutex struct {
	X__sig    int64
	X__opaque [56]int8
}

type pthreadcond struct {
	X__sig    int64
	X__opaque [40]int8
}
