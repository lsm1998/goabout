package tests

import "testing"

/**
基准测试
*/
func BenchmarkFibonacci(b *testing.B) {
	for i := 0; i < b.N; i++ {
		Fibonacci(10)
	}
}

/***
BenchmarkFibonacci
BenchmarkFibonacci-10    	 3819184	       308.6 ns/op
PASS

BenchmarkFibonacci-10 代表10核心
3819184 代表for循环执行次数
308.6 ns/op 代表每次耗费308.6纳秒
*/
