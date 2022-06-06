package main

func add(a, b int64) (int64, bool) {
	return a + b, true
}

// GOOS=linux GOARCH=amd64 go tool compile -N -S main.go >> main.S
func main() {
	add(10, 100)
}
