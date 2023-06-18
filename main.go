package main

import (
	"fmt"
	"net/http"
)

func hw_page(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<h1>Hello World</h1>")
}

func main() {
	http.HandleFunc("/", hw_page)
	http.ListenAndServe(":3000", nil)
}
