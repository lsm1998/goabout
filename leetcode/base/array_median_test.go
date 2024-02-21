package base

import (
	"fmt"
	"testing"
)

/**
给定两个大小分别为 m 和 n 的正序（从小到大）数组nums1和nums2。请你找出并返回这两个正序数组的 中位数 。
算法的时间复杂度应该为 O(log (m+n)) 。
示例 1：
输入：nums1 = [1,3], nums2 = [2]
输出：2.00000
解释：合并数组 = [1,2,3] ，中位数 2
示例 2：
输入：nums1 = [1,2], nums2 = [3,4]
输出：2.50000
解释：合并数组 = [1,2,3,4] ，中位数 (2 + 3) / 2 = 2.5
*/

/*
*
中心思想
两个数组合并后，根据中位数分为大数部分和小数部分
则满足 i + j = （m+n）/2
i：第一个数组的大小数分界点
j：第二个数组的大小数分界点
m、n：分别位两个数组的长度
根据二分法寻找i即可
*/
func TestArrayMedian(t *testing.T) {
	fmt.Println(ArrayMedian([]int{1, 3}, []int{2}))
	fmt.Println(ArrayMedian([]int{1, 2}, []int{3, 4}))
}

func ArrayMedian(nums1 []int, nums2 []int) float64 {
	totalLen := len(nums1) + len(nums2)
	if totalLen%2 == 0 {
		return (findKth(nums1, nums2, totalLen/2) + findKth(nums1, nums2, totalLen/2-1)) / 2.0
	} else {
		return findKth(nums1, nums2, totalLen/2)
	}
}

func findKth(nums1 []int, nums2 []int, k int) float64 {
	if len(nums1) > len(nums2) {
		return findKth(nums2, nums1, k)
	}
	if len(nums1) == 0 {
		return float64(nums2[k])
	}
	if k == 0 {
		return float64(min(nums1[0], nums2[0]))
	}

	p1 := min(k/2, len(nums1)-1)
	p2 := k - p1 - 1

	if nums1[p1] <= nums2[p2] {
		return findKth(nums1[p1+1:], nums2, k-p1-1)
	} else {
		return findKth(nums1, nums2[p2+1:], k-p2-1)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
