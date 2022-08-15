package lru

import (
	"fmt"
	"testing"
)

func TestNew(t *testing.T) {
	lru := New(5)

	for i := 0; i < 10; i++ {
		lru.Add(i, i)
	}

	fmt.Println(lru.Len())
}
