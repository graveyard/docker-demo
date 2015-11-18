package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Thanks for trying docker! Here's your message:")
	fmt.Println("\"" + os.Getenv("HELLO_MESSAGE") + "\"")
}
