package main

import (
	"log"
	"os"
)

func main() {

	log.Println("Hello !!!")
	dbConn := os.Getenv("DBConnectionString")
	if dbConn == "" {
		log.Fatalln("DBConnectionString variable not found")
	}

	log.Println(dbConn)
}
