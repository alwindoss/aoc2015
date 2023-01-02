package main

import "fmt"

func main() {
	floorSantaIsIn := 0
	for _, ch := range input {
		switch ch {
		case '(':
			fmt.Printf("%c Santa: Go up\n", ch)
			floorSantaIsIn += 1
		case ')':
			fmt.Printf("%c Santa: Go down\n", ch)
			floorSantaIsIn -= 1

		}
	}
	fmt.Println("The floor santa is in:", floorSantaIsIn)
}
