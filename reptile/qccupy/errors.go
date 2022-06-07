package qccupy

import "errors"

var (
	TicketQueryEmptyErr = errors.New("ticket query empty")

	LoginCheckErr = errors.New("login check flag is false")

	SubmitOrderErr = errors.New("submit order status is false")
)
