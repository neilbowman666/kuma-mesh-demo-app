package main

import (
	"fmt"
	"github.com/go-redis/redis/v9"
	"os"
)

func getenv(key, fallback string) string {
	value := os.Getenv(key)
	if len(value) == 0 {
		return fallback
	}
	return value
}

var redisHost = getenv("REDIS_HOST", "localhost")
var redisPort = getenv("REDIS_PORT", "6379")
var redisAddr = fmt.Sprintf("%v:%v", redisHost, redisPort)

var rdb = redis.NewClient(&redis.Options{
	Addr:     redisAddr,
	Password: "", // no password set
	DB:       0,  // use default DB
})
