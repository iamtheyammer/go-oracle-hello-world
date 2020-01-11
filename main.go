package main

import (
	"database/sql"
	"fmt"
	_ "github.com/godror/godror"
	"os"
)

const connString = "username/password@connString"

func main() {
	databaseDSN, ok := os.LookupEnv("DATABASE_DSN")
	if !ok {
		databaseDSN = connString
	}

	db, err := sql.Open("godror", databaseDSN)
	if err != nil {
		panic(fmt.Errorf("error opening db: %w", err))
	}

	err = db.Ping()
	if err != nil {
		panic(fmt.Errorf("error pinging db: %w", err))
	}

	row := db.QueryRow("SELECT sysdate FROM dual")

	var s string
	err = row.Scan(&s)
	if err != nil {
		panic(fmt.Errorf("error scanning db: %w", err))
	}

	fmt.Println(s)
}
