package controllers

import (
	"portfolio-go/helper"
	"portfolio-go/model"

	beego "github.com/beego/beego/v2/server/web"
)

type DataController struct {
	beego.Controller
}

func (c *DataController) GetAllVisitors() {
	var visitor []model.Visitor
	helper.MdlDtl().Find(&visitor)
	c.Data["json"] = visitor
	c.ServeJSON()
}
