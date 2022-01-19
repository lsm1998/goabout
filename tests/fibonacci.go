package tests

func Fibonacci(n int32) int {
	if n < 3 {
		return 1
	} else {
		return Fibonacci(n-2) + Fibonacci(n-1)
	}
}
