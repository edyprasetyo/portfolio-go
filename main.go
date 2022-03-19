package main

import (
	"os"
	_ "portfolio-go/routers"

	beego "github.com/beego/beego/v2/server/web"
	_ "github.com/go-sql-driver/mysql"
)

func main() {
	// list := helper.RetrieveListMapQuery("SELECT * FROM Visitor")
	// fmt.Println(list[0])
	// helper.InsertQuery("UPDATE VISITOR SET Header2 = ''")
	// var visitor model.Visitor
	// helper.MdlDtl().First(&visitor)
	// fmt.Println(visitor.Tanggal.Format("Monday, 02 January 2006"))
	os.Setenv("TZ", "Asia/Jakarta")

	beego.Run()
}
