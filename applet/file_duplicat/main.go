package main

import (
	"crypto/md5"
	"flag"
	"fmt"
	"io/fs"
	"os"
	"path/filepath"
	"strconv"
	"sync"
	"sync/atomic"
	"time"
)

var path = flag.String("path", "./", "path")
var method = flag.String("method", "dup", "method")
var works = flag.Int("works", 32, "works")

var md5Map = sync.Map{}
var delCount int32
var scanCount int32

func init() {
	go func() {
		tick := time.Tick(time.Second)
		for range tick {
			log()
		}
	}()
}

func log() {
	fmt.Println("当前删除图片", atomic.LoadInt32(&delCount), "，当前扫描图片", atomic.LoadInt32(&scanCount))
}

func main() {
	flag.Parse()

	// *path = "D:\\图片\\data"

	var operation = show
	switch *method {
	case "dup":
		operation = checkDuplicate
	case "show":
		operation = show
	}
	var wg sync.WaitGroup

	var jobC = make(chan struct{}, *works)

	if err := filepath.Walk(*path, func(path string, info fs.FileInfo, err error) error {
		if info.IsDir() {
			return nil
		}
		wg.Add(1)
		go func() {
			defer func() {
				wg.Done()
				<-jobC
			}()
			// 尝试获取一个许可
			jobC <- struct{}{}
			atomic.AddInt32(&scanCount, 1)
			if _err := operation(path, info); _err != nil {
				panic(err)
			}
		}()
		return nil
	}); err != nil {
		panic(err)
	}
	wg.Wait()
	log()
}

func show(path string, info fs.FileInfo) error {
	fmt.Println("path=", path, ",size=", info.Size())
	return nil
}

func checkDuplicate(path string, info fs.FileInfo) error {
	md5Bytes, err := getMd5WithPath(path)
	if err != nil {
		return err
	}
	_, loaded := md5Map.LoadOrStore(string(md5Bytes)+":"+strconv.Itoa(int(info.Size())), struct{}{})
	if loaded { // 说明已经存在
		atomic.AddInt32(&delCount, 1)
		return os.Remove(path)
	}
	return nil
}

func getMd5WithPath(path string) ([]byte, error) {
	bytes, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	hash := md5.New()
	hash.Write(bytes)
	return hash.Sum(nil), nil
}
