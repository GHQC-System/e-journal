package main

import (
	sess "e-journal/autchSession"
	"e-journal/models"
	_ "e-journal/routers"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)
func init() {

	orm.RegisterDriver("mysql", orm.DRMySQL)
	orm.RegisterDataBase("default", "mysql", beego.AppConfig.String("bduser")+
		":"+beego.AppConfig.String("bdpass")+"@tcp("+beego.AppConfig.String("dbhost")+
		":"+beego.AppConfig.String("dbport")+")/"+beego.AppConfig.String("dbname")+"?charset=utf8")
	orm.RegisterModel(new(models.User))
	orm.RegisterModel(new(models.Classes))

}
func main() {
	sess.Init()
	beego.Run()
}

