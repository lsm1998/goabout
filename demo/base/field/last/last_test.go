package main_test

import (
	"encoding/json"
	"fmt"
)

type Much struct {
	Status         int    `json:"status"`
	Result         int    `json:"result"`
	ExpirationTime string `json:"expiration_time"`
	UserRole       int    `json:"user_role"`
	Desc           string `json:"desc"`
}

func Example_much() {
	demo := Much{}
	outInterface(demo, setMuch(&demo))

	// Output:
	// main_test.Much{Status:0, Result:0, ExpirationTime:"", UserRole:0, Desc:""}；err:%!s(<nil>)
}

func setMuch(demo *Much) error {
	return json.Unmarshal([]byte(`{"status":10,"result":1,"UserRole":6}`), demo)
}

type Single struct {
	Id int `json:"id"`
}

func Example_single() {
	demo := Single{}
	outInterface(demo, setSingle(&demo))

	// Output:
	// main_test.Single{Id:10}；err:%!s(<nil>)
}

func setSingle(demo *Single) error {
	return json.Unmarshal([]byte(`{"id":10}`), demo)
}

func outInterface(demo interface{}, err error) {
	fmt.Printf("%#v；err:%s", demo, err)
}

func Example_yes() {
	much := Much{}
	outMuch(&much, setMuch(&much))
	single := Single{}
	outSingle(single, setSingle(&single))
	// Output:
	// 0 1 10
	// 10
}

func outMuch(demo *Much, err error) {
	fmt.Println(demo.UserRole, demo.Result, demo.Status)
}
func outSingle(demo Single, err error) {
	fmt.Println(demo.Id)
}
