package main

import (
        "io"
        "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
        io.WriteString(w, "Hello World! 20171225 0:18")
}

func main() {
        http.HandleFunc("/", hello)
        http.ListenAndServe(":80", nil)
}

