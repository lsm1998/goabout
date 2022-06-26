package sort

import "testing"

func QuickSort(array []int) {
	quickSort(array, 0, len(array)-1)
}

func quickSort(array []int, left, right int) {
	for left < right {
		pivot := getPivot(array, left, right)
		quickSort(array, left, pivot-1)
		quickSort(array, pivot+1, right)
	}
}

func getPivot(array []int, left int, right int) int {
	temp := array[left]
	for left < right {
		for temp <= array[right] && left < right {
			right--
		}
		for temp >= array[left] && left < right {
			left++
		}
		if left < right {
			array[right] = array[left]
			right--
		}
	}
	array[left] = temp
	return left
}

func TestQuickSort(t *testing.T) {
	array := []int{3, 6, 1, 2, 7, 9, 3, 4, 6, 77, -10}
	QuickSort(array)
	t.Log(array)
}
