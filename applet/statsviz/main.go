package main

import (
	"github.com/arl/statsviz"
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()
	if err := statsviz.Register(mux); err != nil {
		panic(err)
	}
	go func() {
		log.Println(http.ListenAndServe("localhost:8080", mux))
	}()
	select {}
}
