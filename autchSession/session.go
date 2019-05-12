package autchSession

import (
	"encoding/json"
	"fmt"
	_ "github.com/astaxie/beego/session/mysql"

	"github.com/astaxie/beego/session"
)

var (
	GlobalSessions *session.Manager
	conf           = &session.ManagerConfig{}
)

func Init() {

	//config := `{"cookieName":"gosessionid", "gclifetime":3600, "enableSetCookie":true, "providerConfig":"ghqcejournal:12345678Bas@tcp(85.10.205.173)/ghqcejournal?charset=utf8"}`
	//
	//if err := json.Unmarshal([]byte(config), conf); err != nil {
	//	fmt.Println("json decode error", err)
	//}
	//
	//GlobalSessions, _ = session.NewManager("mysql", conf)
	//go GlobalSessions.GC()
	config := `{"cookieName":"gosessionid", "gclifetime":3600, "enableSetCookie":true, "providerConfig":"./tmp"}`

	if err := json.Unmarshal([]byte(config), conf); err != nil {
		fmt.Println("json decode error", err)
	}

	GlobalSessions, _ = session.NewManager("file", conf)
	go GlobalSessions.GC()
}
