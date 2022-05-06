package sort

import (
	"fmt"
	"testing"
)

func InsertSort(array []int) {
	for i := 0; i < len(array)-1; i++ {
		index := i + 1
		temp := array[index]
		for j := 0; j < index; j++ {
			if temp < array[j] {
				array[j], array[index] = array[index], array[j]
				index = j
				goto Translation
			}
		}
		continue
	Translation:
		for j := index; j > 0; j-- {
			array[j] = array[j-1]
		}
	}
}

func TestInsertSort(t *testing.T) {
	array := []int{3, 6, 1, 2, 7, 9, 3, 4, 6, 77, -10}
	InsertSort(array)
	fmt.Println(array)
}
