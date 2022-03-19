package routers

import (
	"portfolio-go/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/", &controllers.IndexController{}, "get:Index")
	beego.Router("/data/getallvisitors", &controllers.DataController{}, "get:GetAllVisitors")
}
