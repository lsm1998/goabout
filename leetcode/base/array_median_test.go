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

/**
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

func ArrayMedian(arr1, arr2 []int) float32 {
	return 0
}
