package _12306

import (
	"reptile/qccupy"
	"reptile/qccupy/_12306/request"
)

// GetPassenger 获取乘客，返回空则代表需要重试
func (t *kyfwClient) GetPassenger(req qccupy.GetPassengerReq, userToken qccupy.UserToken) (interface{}, error) {
	return request.GetPassengerDTOs(req.PassengerFromData(), userToken)
}

// SubmitOrderRequest 提交订单
func (t *kyfwClient) SubmitOrderRequest(req qccupy.SubmitOrderReq, token qccupy.UserToken) (qccupy.SubmitOrderStatus, error) {
	return request.SubmitOrderRequest(req, token)
}
