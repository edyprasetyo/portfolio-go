package controllers

import (
	"fmt"
	"portfolio-go/helper"
	"portfolio-go/model"

	beego "github.com/beego/beego/v2/server/web"
)

type IndexController struct {
	beego.Controller
}

func (c *IndexController) Index() {
	h := c.Ctx.Request.Header
	ip := helper.Sha1Hash(fmt.Sprint(h["Cookie"], h["User-Agent"]))

	var visitor model.Visitor
	res := helper.MdlDtl().Where("IP = ?", ip).First(&visitor)

	var utilLog model.UtilLog
	helper.MdlDtl().Where("ID = ?", 1).First(&utilLog)

	if res.RowsAffected == 0 {
		visitor.IP = ip

		utilLog.JumlahPengunjung = utilLog.JumlahPengunjung + 1
		helper.MdlDtl().Save(&utilLog)
	}
	visitor.Header1 = ""
	visitor.Header2 = ""
	visitor.Tanggal = helper.DatetimeNow()
	helper.MdlDtl().Save(&visitor)

	c.Data["visitor"] = utilLog.JumlahPengunjung
	c.Layout = "layout/layout.tpl"
	c.TplName = "page/index.tpl"
}
