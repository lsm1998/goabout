package main

import (
	"fmt"
	"gorm.io/driver/clickhouse"
	"gorm.io/gorm"
	"time"
)

type OrderMergeTree struct {
	Id          int64
	SkuId       string
	OutTradeNo  string
	TotalAmount float64
	CreateTime  time.Time
}

func (*OrderMergeTree) TableName() string {
	return "order_merge_tree"
}

func main() {
	dsn := "tcp://119.91.192.70:9000?database=yidu&read_timeout=10&write_timeout=20"
	db, err := gorm.Open(clickhouse.Open(dsn), &gorm.Config{})
	if err != nil {
		panic("failed to connect database")
	}
	fmt.Println(SelectDemo(db))
}

func DeleteDemo(db *gorm.DB) {
	for i := 0; i < 10; i++ {
		var temp OrderMergeTree
		temp.Id = int64(i + 1)
		if err := db.Model(temp).Delete(temp).Error; err != nil {
			panic(err)
		}
	}
}

func CreateDemo(db *gorm.DB) {
	for i := 0; i < 10; i++ {
		day := i/3 + 1
		temp := OrderMergeTree{
			Id:          int64(i + 1),
			SkuId:       fmt.Sprintf("SkuId_%d", i),
			OutTradeNo:  fmt.Sprintf("OutTradeNo_%d", i),
			TotalAmount: 100,
			CreateTime:  time.Date(2022, 4, day, 0, 0, 0, 0, time.Local),
		}
		if err := db.Create(&temp).Error; err != nil {
			panic(err)
		}
	}
}

func SelectDemo(db *gorm.DB) []OrderMergeTree {
	var result []OrderMergeTree
	if err := db.Find(&result).Error; err != nil {
		panic(err)
	}
	return result
}
