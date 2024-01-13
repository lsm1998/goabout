package main

import (
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
)

type Student struct {
	Id   int64  `json:"id"`
	Name string `json:"name"`
}

func (*Student) TableName() string {
	return "student"
}

func main() {
	db, err := gorm.Open(sqlite.Open("test-sqlite.db"), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}
	if err = db.AutoMigrate(new(Student)); err != nil {
		panic(err)
	}
	s := &Student{
		Id:   1,
		Name: "hello",
	}
	db.Create(&s)
}
