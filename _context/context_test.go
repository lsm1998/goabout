package _context

import (
	"testing"
)

func TestTimeoutDemo(t *testing.T) {
	for i := 0; i < 100; i++ {
		TimeoutDemo()
	}
}
