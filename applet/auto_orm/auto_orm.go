package auto_orm

import "gorm.io/gorm"

// AutoOrm K is the primary key type, T is the table type
type AutoOrm[K, T any] struct {
	db *gorm.DB
}

func NewAutoOrm[T, K any](db *gorm.DB) *AutoOrm[T, K] {
	return &AutoOrm[T, K]{db: db}
}

func (a *AutoOrm[T, K]) Insert(data *T) error {
	return a.db.Create(data).Error
}

func (a *AutoOrm[T, K]) Update(data *T) error {
	return a.db.Save(data).Error
}

func (a *AutoOrm[T, K]) DeleteById(id K) error {
	return a.db.Delete(id).Error
}

func (a *AutoOrm[T, K]) FindById(data *T, id K) error {
	return a.db.First(data, id).Error
}

func (a *AutoOrm[T, K]) FindAll(data *[]T) error {
	return a.db.Find(data).Error
}
