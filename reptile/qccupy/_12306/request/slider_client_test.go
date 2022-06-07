package request

import (
	"context"
	"fmt"
	"github.com/stretchr/testify/assert"
	"testing"
)

func ExampleMd5hex() {
	// Output: 5d41402abc4b2a76b9719d911017c592
	fmt.Println(Md5hex("hello"))
}

func TestGetSign(t *testing.T) {
	resp, err := GetSign(context.Background(), "9a7816c740ce68308030cd696d933b6c", "TGT_S7B64FAE637E6B3B31935", "FFFF0N000000000085DE:1654054134347:0.6891971648210251")
	assert.Nil(t, err)
	fmt.Println(resp)
}
