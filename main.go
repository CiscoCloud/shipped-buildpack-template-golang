package main

import (
	"fmt"
	"net/http"
)

func defaultHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "<h1>Shipped golang sample</h1><div>Hello World</div>")
}

func main() {
    http.HandleFunc("/", defaultHandler)
    http.ListenAndServe(":8888", nil)
}
