package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {

	r := gin.Default()

	r.GET("/health", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"health": true,
		})
	})

	r.GET("", func(c *gin.Context) {
		err := rdb.Set(c, "name", "Bruce Lee", 0).Err()
		if err != nil {
			panic(err)
		}
		val, err := rdb.Get(c, "name").Result()
		if err != nil {
			panic(err)
		}

		c.JSON(http.StatusOK, gin.H{
			"name": val,
		})
	})

	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
