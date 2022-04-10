package main

import (
	"gorm.io/driver/clickhouse"
	"gorm.io/gorm"
)

type User struct {
	Name string
	Age  int
}

func main() {
	dsn := "tcp://localhost:9000?database=gorm&username=gorm&password=gorm&read_timeout=10&write_timeout=20"
	db, err := gorm.Open(clickhouse.Open(dsn), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}
	// Auto Migrate
	db.AutoMigrate(&User{})
	// Set table options
	db.Set("gorm:table_options", "ENGINE=Distributed(cluster, default, hits)").AutoMigrate(&User{})

	// Set table cluster options
	db.Set("gorm:table_cluster_options", "on cluster default").AutoMigrate(&User{})

	// Insert
	db.Create(&User{Name: "Angeliz", Age: 18})

	// Select
	db.Find(&User{}, "name = ?", "Angeliz")

	// Batch Insert
	user1 := User{Age: 12, Name: "Bruce Lee"}
	user2 := User{Age: 13, Name: "Feynman"}
	user3 := User{Age: 14, Name: "Angeliz"}
	var users = []User{user1, user2, user3}
	db.Create(&users)
	// ...
}
