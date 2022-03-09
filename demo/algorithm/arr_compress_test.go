package algorithm

import (
	"bytes"
	"fmt"
	"testing"
)

/**
数组压缩
*/
func TestArrCompress(t *testing.T) {
	fmt.Println(ArrCompress([]int{1, 2, 4, 5, 8, 10}))
}

func ArrCompress(arr []int) string {
	if len(arr) == 0 {
		return ""
	}
	flag := false
	start := arr[0]
	buffer := bytes.Buffer{}
	for i := 0; i < len(arr); i++ {
		if len(arr) == i+1 {
			if flag {
				buffer.WriteString(fmt.Sprintf("(%d,%d)", start, arr[i]))
			} else {
				buffer.WriteString(fmt.Sprintf("(%d,%d)", arr[i], arr[i]))
			}
		} else {
			if !flag {
				start = arr[i]
			}
			if isContinuity(i, arr) {
				flag = true
			} else {
				buffer.WriteString(fmt.Sprintf("(%d,%d)", start, arr[i]))
				start = arr[i]
				flag = false
			}
		}
	}
	return buffer.String()
}

func isContinuity(index int, arr []int) bool {
	return arr[index]+1 == arr[index+1]
}
