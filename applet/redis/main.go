package main

import (
	"fmt"
	goredislib "github.com/go-redis/redis/v8"
	"github.com/go-redsync/redsync/v4"
	"github.com/go-redsync/redsync/v4/redis/goredis/v8"
	"math"
	"sync"
	"sync/atomic"
	"time"
)

var count int64

func Work(rs *redsync.Redsync, key string, task func()) error {
	mutex := rs.NewMutex(key, redsync.WithExpiry(100*time.Second), redsync.WithTries(math.MaxInt))

	// 对key进行
	if err := mutex.Lock(); err != nil {
		panic(err)
	}

	// 获取锁后的业务逻辑处理.
	task()

	// 释放互斥锁
	if ok, err := mutex.Unlock(); !ok || err != nil {
		panic("unlock failed")
	}

	return nil
}

func main() {
	// 创建一个redis的客户端连接
	client := goredislib.NewClient(&goredislib.Options{
		Addr:     "192.168.31.177:6379",
		Password: "redisyyds123",
	})
	// 创建redsync的客户端连接池
	pool := goredis.NewPool(client)

	// 创建redsync实例
	rs := redsync.New(pool)

	var wg sync.WaitGroup
	now := time.Now()
	for i := 0; i < 10000; i++ {
		wg.Add(1)
		go func() {
			if err := Work(rs, "my-global-mutex", func() {
				atomic.AddInt64(&count, 1)
				wg.Done()
			}); err != nil {
				panic(err)
			}
		}()
	}
	wg.Wait()
	fmt.Println("count=", count, "耗时=", time.Since(now))
}
