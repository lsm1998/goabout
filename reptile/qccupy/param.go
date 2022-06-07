package qccupy

import "net/http"

type OccupySeatResp interface {
	QueryPassenger() string
}

type HeaderParam interface {
	Header() http.Header
}

type UserInfo interface {
	Username() string

	Password() string
}

type ConditionParam interface {
	Condition() map[string]string
}

type FilterParam interface {
	Filter() TicketQueryFilter
}

type TourFlag interface {
	TourFlag() string
}

type OccupySeatReq interface {
	HeaderParam

	ConditionParam

	FilterParam

	TourFlag

	UserInfo
}
