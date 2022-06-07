package _12306

import (
	"fmt"
)

func Example_encryptEcbV2() {
	// Output: 5jhZNLnbRbLVn7jEibAjfw==
	fmt.Println(encryptEcbV2("LSMsky123", "tiekeyuankp12306"))
}
