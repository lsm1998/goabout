package redis

import (
	"fmt"
	"github.com/go-redis/redis"
	"os"
	"testing"
)

var client *redis.Client

var seckillScript []byte

func init() {
	client = redis.NewClient(&redis.Options{
		Addr:     os.Getenv("REDIS_ADDR"),
		Password: "",
		DB:       0,
	})

	var err error
	seckillScript, err = os.ReadFile("seckill.lua")
	if err != nil {
		panic(err)
	}
}

func TestSeckill(t *testing.T) {
	script := redis.NewScript(string(seckillScript))
	result, err := script.Run(client, []string{"data:seckill:100", "1"}).Result()
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(result)
}
