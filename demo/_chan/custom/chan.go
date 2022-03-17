package custom

type MyChan interface {
	Send(obj interface{})

	Recv() interface{}

	Len() int

	Close()
}
