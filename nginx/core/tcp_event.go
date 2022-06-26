package core

import "net"

type TcpNginxEvent struct {
	net.Listener
}

func NewTcpEvent(address string) (*TcpNginxEvent, error) {
	var event = &TcpNginxEvent{}
	var err error
	event.Listener, err = net.Listen("tcp", address)
	if err != nil {
		return nil, err
	}
	return event, nil
}

func (t *TcpNginxEvent) Accept() (net.Conn, error) {
	return t.Listener.Accept()
}

func (t *TcpNginxEvent) Close() error {
	//TODO implement me
	panic("implement me")
}
