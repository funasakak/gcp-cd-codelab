package main

import (
        "io"
        "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
        io.WriteString(w, "Happy New Year! 20180105 0:42")
}

func main() {
        http.HandleFunc("/", hello)
        http.ListenAndServe(":80", nil)
}

