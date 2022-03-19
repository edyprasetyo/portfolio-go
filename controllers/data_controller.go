package controllers

import (
	"portfolio-go/helper"

	beego "github.com/beego/beego/v2/server/web"
)

type DataController struct {
	beego.Controller
}

func (c *DataController) GetData() {
	list := helper.RetrieveListMapQuery("SELECT * FROM Visitor")
	c.Data["json"] = list
	c.ServeJSON()
}
