package main

import (
        "io"
        "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
        io.WriteString(w, "Hello World! 20171226 1:10")
}

func main() {
        http.HandleFunc("/", hello)
        http.ListenAndServe(":80", nil)
}

