package base

import (
	"bytes"
	"fmt"
	"testing"
)

/**
将一个给定字符串 s 根据给定的行数 numRows ，以从上往下、从左到右进行 Z 字形排列。
比如输入字符串为 "PAYPALISHIRING"行数为 3 时，排列如下：
P   A   H   N
A P L S I I G
Y   I   R
之后，你的输出需要从左往右逐行读取，产生出一个新的字符串，比如："PAHNAPLSIIGYIR"。
请你实现这个将字符串进行指定行数变换的函数：
string convert(string s, int numRows);
示例 1：
输入：s = "PAYPALISHIRING", numRows = 3
输出："PAHNAPLSIIGYIR"
示例 2：
输入：s = "PAYPALISHIRING", numRows = 4
输出："PINALSIGYAHRPI"
解释：
P     I    N
A   L S  I G
Y A   H R
P     I
示例 3：
输入：s = "A", numRows = 1
输出："A"
*/
func TestZSort(t *testing.T) {
	fmt.Println(ZSort("PAYPALISHIRING", 3))
	fmt.Println("---------------------")
	fmt.Println(ZSort("PAYPALISHIRING", 4))
	fmt.Println("---------------------")
	fmt.Println(ZSort("A", 1))
}

func ZSort(str string, numRows int) string {
	arr := make([][]string, numRows, numRows)
	for i := 0; i < len(arr); i++ {
		arr[i] = make([]string, len(str), len(str))
	}
	index := 0
	row := 0
	for index < len(str) {
		for i := 0; i < numRows && index < len(str); i++ {
			arr[i][row] = string(str[index])
			index++
		}
		for i := numRows - 1; i >= 0 && index < len(str); i-- {
			row++
			arr[i][row] = string(str[index])
			index++
		}
	}
	zStr := ToZString(arr, row)
	return zStr
}

func ToZString(arr [][]string, row int) string {
	buffer := bytes.Buffer{}
	for i := 0; i < len(arr); i++ {
		for j := 0; j < row+1; j++ {
			if arr[i][j] == "" {
				buffer.WriteString(" ")
			} else {
				buffer.WriteString(arr[i][j])
			}
		}
		if i < len(arr)-1 {
			buffer.WriteString("\n")
		}
	}
	return buffer.String()
}
