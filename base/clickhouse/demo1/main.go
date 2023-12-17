package main

import (
	"fmt"
	"gorm.io/driver/clickhouse"
	"gorm.io/gorm"
	"time"
)

type ClickStream struct {
	UstomerId      string
	TimeStamp      time.Time
	ClickEventType string
	PageCode       string
	SourceId       int64
}

func (*ClickStream) TableName() string {
	return "clickStream"
}

func main() {
	dsn := "tcp://localhost:9000?database=yidu&read_timeout=10&write_timeout=20"
	db, err := gorm.Open(clickhouse.Open(dsn), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}
	//// Auto Migrate
	//db.AutoMigrate(&ClickStream{})
	//// Set table options
	//db.Set("gorm:table_options", "ENGINE=Distributed(cluster, default, hits)").AutoMigrate(&ClickStream{})
	//
	//// Set table cluster options
	//db.Set("gorm:table_cluster_options", "on cluster default").AutoMigrate(&ClickStream{})

	// Insert
	//db.Create(&User{Name: "Angeliz", Age: 18})

	// Select
	//db.Find(&User{}, "name = ?", "Angeliz")

	// Batch Insert
	//user1 := User{Age: 12, Name: "Bruce Lee"}
	//user2 := User{Age: 13, Name: "Feynman"}
	//user3 := User{Age: 14, Name: "Angeliz"}
	//var users = []User{user1, user2, user3}
	//db.Create(&users)
	// ...

	fmt.Println(SelectDemo(db))
}

func CreateDemo(db *gorm.DB) {
	temp := ClickStream{UstomerId: "001", TimeStamp: time.Now(), ClickEventType: "click", PageCode: "001", SourceId: 1}
	if err := db.Create(&temp).Error; err != nil {
		panic(err.Error())
	}
}

func SelectDemo(db *gorm.DB) []ClickStream {
	var result []ClickStream
	if err := db.Find(&result).Error; err != nil {
		panic(err.Error())
	}
	return result
}
