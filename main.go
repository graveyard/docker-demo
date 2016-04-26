package main

import (
	"fmt"
	"os"

	"github.com/Clever/discovery-go"
)

func main() {
	os.Setenv("SERVICE_TEST_HTTP_HOST", "test.com")
	os.Setenv("SERVICE_TEST_HTTP_PORT", "80")
	os.Setenv("SERVICE_TEST_HTTP_PROTO", "http")

	url, err := discovery.URL("test", "http")
	if err != nil {
		panic(err)
	}

	fmt.Println("Here's our URL, " + url)
}
