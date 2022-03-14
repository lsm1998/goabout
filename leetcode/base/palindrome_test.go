package base

import (
	"fmt"
	"testing"
)

/**
给你一个字符串 s，找到 s 中最长的回文子串。
示例 1：
输入：s = "babad"
输出："bab"
解释："aba" 同样是符合题意的答案。
示例 2：
输入：s = "cbbd"
输出："bb"
提示：
1 <= s.length <= 1000
s 仅由数字和英文字母组成
*/

func TestPalindromeSubString(t *testing.T) {
	fmt.Println(PalindromeSubString("babad"))
	fmt.Println(PalindromeSubString("cbbd"))
}

func PalindromeSubString(str string) string {
	var currPalindrome string
	for i := 0; i < len(str); i++ {
		for j := i + 1; j < len(str); j++ {
			if isPalindromeString(str[i:j]) {
				if len(str[i:j]) > len(currPalindrome) {
					currPalindrome = str[i:j]
				}
			}
		}
	}
	return currPalindrome
}

func isPalindromeString(str string) bool {
	for i := 0; i < len(str)/2; i++ {
		if str[i] != str[len(str)-i-1] {
			return false
		}
	}
	return true
}
