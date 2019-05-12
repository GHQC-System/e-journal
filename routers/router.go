package routers

import (
	"e-journal/controllers"
	"github.com/astaxie/beego"
)

func init() {
    beego.Router("/", &controllers.AuthorizationController{},"get:LoginGet")
    beego.Router("/", &controllers.AuthorizationController{},"post:LoginPost")
    beego.Router("/lk", &controllers.AuthorizationController{},"get:LkGet")
	beego.Router("/logout", &controllers.AuthorizationController{},"get:Logout")
	beego.Router("/lkusers", &controllers.AuthorizationController{},"get:LkusersGet")
}
