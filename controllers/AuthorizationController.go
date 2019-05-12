/*
#########################################
#########################################
#########################################
##########		   			#############
########## 	 GHQC-System 	#############
##########		   		    #############
#########################################
#########################################
#########################################
*/
package controllers

import (
	"github.com/CossackPyra/pyraconv"
	s "e-journal/autchSession"
	"e-journal/models"
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type AuthorizationController struct {
	beego.Controller
}

func (c *AuthorizationController) LoginGet() {
	Sess, err := s.GlobalSessions.SessionStart(c.Ctx.ResponseWriter, c.Ctx.Request)
	if err != nil {
		panic(err)
	}

	autch := pyraconv.ToString(Sess.Get("Authorized"))
	fmt.Println("Сесия "+autch)
	if autch != "logins" {
		errors :=pyraconv.ToString(Sess.Get("err"))
		fmt.Println(errors)
		c.Data["err"] = errors
	c.TplName = "index.tpl"
	}else {
		c.Redirect("/lk", 302)
	}

}
func (c *AuthorizationController) LkGet() {
	Sess, err := s.GlobalSessions.SessionStart(c.Ctx.ResponseWriter, c.Ctx.Request)
	if err != nil {
		panic(err)
	}
	autch := pyraconv.ToString(Sess.Get("Authorized"))

	fmt.Println("Сесия "+autch)
	if autch == "logins" {
		fio := pyraconv.ToString(Sess.Get("Fio"))
		e_id := pyraconv.ToString(Sess.Get("E-id"))
		c.Layout = "main.tpl"
		c.LayoutSections = make(map[string]string)
		c.TplName = "lkmain.tpl"
		c.Data["fio"] = fio
		c.Data["e_id"] = e_id
		c.Data["actS"] = "<li  class=\"active selected\">"
		c.Data["actP"] = "<li  >"

		err, post := models.ViewAllClasses()

	if err != orm.ErrNoRows {
		c.Data["records"] = post

	}
	} else {
		c.Redirect("/", 302)
	}

}
func (c *AuthorizationController) LkusersGet() {
	Sess, err := s.GlobalSessions.SessionStart(c.Ctx.ResponseWriter, c.Ctx.Request)
	if err != nil {
		panic(err)
	}
	autch := pyraconv.ToString(Sess.Get("Authorized"))
	fmt.Println("Сесия "+autch)
	if autch == "logins" {
		fio := pyraconv.ToString(Sess.Get("Fio"))
		e_id := pyraconv.ToString(Sess.Get("E-id"))
		fmt.Println(e_id)
		c.Layout = "main.tpl"
		c.LayoutSections = make(map[string]string)
		c.TplName = "lkusers.tpl"
		c.Data["fio"] = fio
		c.Data["e_id"] = e_id
		c.Data["actS"] = "<li  >"

		c.Data["actP"] ="<li  class=\"active selected\">"


		err, users := models.ViewAllUsers()

		if err != orm.ErrNoRows {
			c.Data["records"] = users

		}
	} else {
		c.Redirect("/", 302)
	}

}
func (c *AuthorizationController) Logout() {
	Sess, err := s.GlobalSessions.SessionStart(c.Ctx.ResponseWriter, c.Ctx.Request)
	if err != nil {
		panic(err)
	}
	autch := pyraconv.ToString(Sess.Get("Authorized"))
	fmt.Println("Сесия "+autch)
	if autch == "logins" {
		c.Layout = "main.tpl"
		c.LayoutSections = make(map[string]string)
		c.TplName = "lkmain.tpl"
		defer Sess.SessionRelease(c.Ctx.ResponseWriter)
		Sess.Set("Authorized", "SD#&SFDGSa")

		c.Redirect("/", 302)
	} else {
		c.Redirect("/", 302)
	}

}
func (main *AuthorizationController) LoginPost() {
	Sess, err := s.GlobalSessions.SessionStart(main.Ctx.ResponseWriter, main.Ctx.Request)
	if err != nil {
		panic(err)
	}

	autch := pyraconv.ToString(Sess.Get("Authorized"))


	fmt.Println("Сесия "+autch)
	main.Layout = "index.tpl"




	if autch != "logins" {

		if main.Ctx.Input.Method() == "POST" {

			username, _ := main.GetInt("e_id")
			password := main.GetString("password")
			fmt.Print(username)
			err, user := models.ViewUser(username)
			if err == nil {
				if username == user.E_id && password == user.Password {
					defer Sess.SessionRelease(main.Ctx.ResponseWriter)
					Sess.Set("Authorized", "logins")
					Sess.Set("Fio", user.Fio)
					Sess.Set("E-id", user.E_id)
					fmt.Println("ок")
					main.Redirect("/lk", 302)
				} else {
					defer Sess.SessionRelease(main.Ctx.ResponseWriter)
					Sess.Set("err", "Неверный e-id или пароль")

					main.Redirect("/", 302)
				}
			}
		} else {
			fmt.Print(err)
		}
	}else {
		main.Redirect("/lk", 302)
	}
}