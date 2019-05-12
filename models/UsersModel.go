package models

import (
	"fmt"
	"github.com/astaxie/beego/orm"
)

type User struct {
	Id 			int
	E_id		int 	`form:"e_id,text,e_id:" valid:"MinSize(5);MaxSize(100)"`
	Password 	string	`form:"password,text,password:" valid:"MinSize(5);MaxSize(100)"`
	Fio			string 	`form:"fio,text,fio:" valid:"MinSize(5);MaxSize(100)"`

}
func (a *User) TableName() string {
	return "users"
}


func ViewUser(e_id int) (error, User) {
	o := orm.NewOrm()
	o.Using("default")

	user := User{}
	qs  := o.QueryTable(user.TableName())
	nym, err :=qs.Filter("e_id",e_id).All(&user)



	if err != nil && nym>0 {
		fmt.Print("Нет")

	}

	return err , user
}
func ViewAllUsers() (error, []*User) {
	o := orm.NewOrm()
	o.Using("default")

	var users []*User
	_,err  := o.QueryTable("users").All(&users)

	return err,users
}
