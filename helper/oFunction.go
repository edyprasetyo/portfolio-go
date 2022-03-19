package helper

import (
	"crypto/sha1"
	"database/sql"
	"fmt"
	"time"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

const (
	username = "b88d2512758988"
	password = "32e13417"
	hostname = "us-cdbr-east-05.cleardb.net"
	dbname   = "heroku_036351945d32615"
)

func Sha1Hash(text string) string {
	var sha = sha1.New()
	sha.Write([]byte(text))
	var encrypted = sha.Sum(nil)
	var encryptedString = fmt.Sprintf("%x", encrypted)
	return encryptedString
}

func getDB() sql.DB {
	db, _ := sql.Open("mysql", fmt.Sprintf("%s:%s@tcp(%s)/%s", username, password, hostname, dbname))
	defer db.Close()

	db.SetMaxOpenConns(20)
	db.SetMaxIdleConns(20)
	db.SetConnMaxLifetime(time.Minute * 5)
	return *db
}

func MdlDtl() *gorm.DB {
	dsn := fmt.Sprintf("%s:%s@tcp(%s)/%s", username, password, hostname, dbname) + "?charset=utf8&parseTime=True"
	db, _ := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	return db
}

func RetrieveListMapQuery(q string) map[int]map[string]string {
	db := getDB()
	rows, _ := db.Query(q)
	columns, _ := rows.Columns()
	count := len(columns)
	values := make([]interface{}, count)
	valuePtrs := make([]interface{}, count)

	final_result := map[int]map[string]string{}
	result_id := 0
	for rows.Next() {
		for i := range columns {
			valuePtrs[i] = &values[i]
		}
		rows.Scan(valuePtrs...)

		tmp_struct := map[string]string{}

		for i, col := range columns {
			var v interface{}
			val := values[i]
			b, ok := val.([]byte)
			if ok {
				v = string(b)
			} else {
				v = val
			}
			tmp_struct[col] = fmt.Sprintf("%s", v)
		}

		final_result[result_id] = tmp_struct
		result_id++
	}
	return final_result
}

func InsertQuery(q string) bool {
	db := getDB()
	res, _ := db.Exec(q)
	i, _ := res.RowsAffected()
	return i >= 0
}
