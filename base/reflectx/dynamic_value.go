package reflectx

type Goods interface {
	Price() int64
}

type Order struct {
	Id    int64  `json:"id"`
	Sn    string `json:"sn"`
	Price int64  `json:"price"`
}
