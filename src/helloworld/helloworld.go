package helloworld

import (
	"io"
	"net/http"
  "math/rand"
  "strconv"
)

func luckynumber(no int) int {
  return rand.Intn(no)
}

func helloworld(w http.ResponseWriter, r *http.Request) {
  message := "Hello world! lucky number of the day is  " + strconv.Itoa(luckynumber(7))
  io.WriteString(w, message)
}

func main() {
	http.HandleFunc("/", helloworld)
	http.ListenAndServe(":8080", nil)
}
