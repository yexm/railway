package main

import (
	"fmt"
	"net/http"

	"github.com/davecgh/go-spew/spew"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		spew.Dump(r)
		fmt.Fprintf(w, "Hello, World!")
	})

	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		panic(err)
	}
}
