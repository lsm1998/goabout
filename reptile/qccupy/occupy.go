package qccupy

type QueryLeftTicketData = []map[string]interface{}

type ConditionMap = map[string]string

// OccupySeatEngine 占座业务引擎接口
type OccupySeatEngine interface {
	TicketQuery

	LoginCheck

	LocationCodeCheck

	CheckOrderInfo

	GetPassenger

	UserLogin

	SubmitOrderRequest

	OccupySeat(OccupySeatReq) (OccupySeatResp, error)
}

// UserToken 用户登录凭证
type UserToken interface {
	GetToken() string

	GetSessionId() string
}

// UserLogin 用户登录
type UserLogin interface {
	UserLogin(username, password string) (UserToken, error)
}

// TicketQuery 车票查询
type TicketQuery interface {
	TicketQuery(condition ConditionMap, filter TicketQueryFilter) (QueryLeftTicketData, error)
}

// LoginCheck 登录验证
type LoginCheck interface {
	LoginCheck(token UserToken) (bool, error)
}

// TicketQueryFilter 车票查询过滤器
type TicketQueryFilter interface {
	Contains(item map[string]string) bool
}

// LocationCodeCheck Location_code判断
type LocationCodeCheck interface {
	LocationCodeCheck() bool
}

type CheckOrderInfo interface {
	CheckOrderInfo(CheckOrderInfoReq) (bool, error)
}

type SubmitOrderRequest interface {
	SubmitOrderRequest(SubmitOrderReq, UserToken) (SubmitOrderStatus, error)
}

type SubmitOrderReq interface {
	SubmitOrderFromData() string
}

type SubmitOrderStatus interface {
	SubmitOrderStatus() bool
}

type GetPassengerReq interface {
	PassengerFromData() string
}

type CheckOrderInfoReq interface {
	CheckOrderInfoDataForm() string
}

type GetPassenger interface {
	GetPassenger(GetPassengerReq, UserToken) (interface{}, error)
}

type PassengerTickets interface {
	GetPassengerTickets() string

	GetOldPassengers(tourFlag string, normalPassengers []interface{}) string
}
