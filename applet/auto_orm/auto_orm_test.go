package auto_orm

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"testing"
)

type Student struct {
	gorm.Model
	Name string
}

func (*Student) TableName() string {
	return "student"
}

var db *gorm.DB

func init() {
	dsn := "root:root@tcp(192.168.239.129:3306)/demo?charset=utf8mb4&parseTime=True&loc=Local"
	_db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		panic(err)
	}
	db = _db
	if err = db.AutoMigrate(&Student{}); err != nil {
		panic(err)
	}
}

func TestAutoOrm_Insert(t *testing.T) {
	orm := NewAutoOrm[Student, uint](db)
	if err := orm.Insert(&Student{Name: "hello"}); err != nil {
		t.Fatal(err)
	}
}

func TestAutoOrm_FindById(t *testing.T) {
	orm := NewAutoOrm[Student, uint](db)
	var student Student
	if err := orm.FindById(&student, 1); err != nil {
		t.Fatal(err)
	}
	t.Log(student)
}
