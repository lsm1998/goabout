package sort

import (
	"fmt"
	"testing"
)

func BubblingSort(array []int) {
	for i := 0; i < len(array)-1; i++ {
		for j := 0; j < len(array)-i-1; j++ {
			if array[j+1] < array[j] {
				array[j], array[j+1] = array[j+1], array[j]
			}
		}
	}
}

func TestBubblingSort(t *testing.T) {
	array := []int{3, 6, 1, 2, 7, 9, 3, 4, 6, 77, -10}
	BubblingSort(array)
	fmt.Println(array)
}
