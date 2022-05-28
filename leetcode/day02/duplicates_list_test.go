package day02

import (
	"fmt"
	"testing"
)

/**
给定一个已排序的链表的头 head ， 删除所有重复的元素，使每个元素只出现一次 。返回 已排序的链表 。

链表中节点数目在范围 [0, 300] 内
-100 <= Node.val <= 100
题目数据保证链表已经按升序 排列
*/

type ListNode struct {
	Val  int
	Next *ListNode
}

func deleteDuplicates(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}
	node := head
	for node.Next != nil {
		if node.Next.Val == node.Val {
			node.Next = node.Next.Next
			continue
		}
		node = node.Next
	}
	return head
}

func TestDeleteDuplicates(t *testing.T) {
	nodes := []*ListNode{
		{Val: 1},
		{Val: 3},
		{Val: 3},
		{Val: 4},
		{Val: 4},
		{Val: 8},
	}
	for i := 0; i < len(nodes)-1; i++ {
		nodes[i].Next = nodes[i+1]
	}
	temp := deleteDuplicates(nodes[0])

	fmt.Println(temp)
}
