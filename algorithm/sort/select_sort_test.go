package sort

import (
	"fmt"
	"testing"
)

func SelectSort(array []int) {
	for i := 0; i < len(array)-1; i++ {
		index := i
		temp := array[index]
		for j := i + 1; j < len(array); j++ {
			if array[j] < temp {
				temp = array[j]
				index = j
			}
		}
		array[i], array[index] = array[index], array[i]
	}
}

func TestSelectSort(t *testing.T) {
	array := []int{3, 6, 1, 2, 7, 9, 3, 4, 6, 77, -10}
	SelectSort(array)
	fmt.Println(array)
}
