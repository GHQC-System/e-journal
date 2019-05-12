package models

import "github.com/astaxie/beego/orm"

type Classes struct {
	Id 		int

	Name 		string	`form:"password,text,password:" valid:"MinSize(5);MaxSize(100)"`

}
func (a *Classes) TableName() string {
	return "classes"
}


func ViewAllClasses() (error, []*Classes) {
	o := orm.NewOrm()
	o.Using("default")

	var classes []*Classes
	_,err  := o.QueryTable("classes").All(&classes)

	return err,classes
}

