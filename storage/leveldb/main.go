package main

import (
	"github.com/syndtr/goleveldb/leveldb"
	"github.com/syndtr/goleveldb/leveldb/opt"
)

func assertSuccess(fun func() error) {
	if err := fun(); err != nil {
		panic(err)
	}
}

func main() {
	db, err := leveldb.OpenFile("demo-leveldb.db", nil)
	if err != nil {
		panic(err)
	}
	assertSuccess(func() error {
		return db.Put([]byte("hello"), []byte("hello"), &opt.WriteOptions{
			Sync: true,
		})
	})
}
