package base

import (
	"fmt"
	"testing"
)

/**
给定一个长度为 n 的整数数组height。有n条垂线，第 i 条线的两个端点是(i, 0)和(i, height[i])。
找出其中的两条线，使得它们与x轴共同构成的容器可以容纳最多的水。
返回容器可以储存的最大水量。
说明：你不能倾斜容器。
示例 1：
输入：[1,8,6,2,5,4,8,3,7]
输出：49
解释：图中垂直线代表输入数组 [1,8,6,2,5,4,8,3,7]。在此情况下，容器能够容纳水（表示为蓝色部分）的最大值为49。
示例 2：
输入：height = [1,1]
输出：1
*/
func TestGaxContainer(t *testing.T) {
	fmt.Println(GaxContainerV2([]int{1, 8, 6, 2, 5, 4, 8, 3, 7}))
	fmt.Println(GaxContainerV2([]int{1, 1}))
}

func GaxContainerV1(height []int) int {
	var max = 0
	var cap = 0
	for i := 0; i < len(height); i++ {
		for j := i + 1; j < len(height); j++ {
			cap = getCapacity(height, i, j)
			if cap > max {
				max = cap
			}
		}
	}
	return max
}

func getCapacity(height []int, start, end int) int {
	return getMin(height[start], height[end]) * (end - start)
}

func getMin(left, right int) int {
	if left > right {
		return right
	}
	return left
}

func GaxContainerV2(height []int) int {
	start := 0
	end := len(height) - 1
	max := 0
	for start < end {
		area := getMin(height[start], height[end]) * (end - start)
		if area > max {
			max = area
		}
		if height[start] < height[end] {
			start++
		} else {
			end--
		}
	}
	return max
}
