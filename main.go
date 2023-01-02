package main

import "fmt"

func main() {
	floorSantaIsIn := 0
	for index, ch := range input {
		switch ch {
		case '(':
			fmt.Printf("%c Santa: Go up\n", ch)
			floorSantaIsIn += 1
		case ')':
			fmt.Printf("%c Santa: Go down\n", ch)
			floorSantaIsIn -= 1

		}
		if floorSantaIsIn == -1 {
			fmt.Println("The position of character at which Santa enters the floor -1 is:", index+1)
			break
		}
	}
}
