package _12306

import (
	"context"
	"reptile/qccupy"
	"reptile/qccupy/_12306/request"
	"time"
)

type occupySeatEngine12306 struct {
	*kyfwClient
}

func NewOccupySeatEngine12306(ctx context.Context) *occupySeatEngine12306 {
	return &occupySeatEngine12306{
		kyfwClient: NewKyfwClient(ctx, "https", "kyfw.12306.cn", 5*time.Second),
	}
}

func (o *occupySeatEngine12306) OccupySeat(req qccupy.OccupySeatReq) (qccupy.OccupySeatResp, error) {
	// 1.查询余票
	o.headers = req.Header()

	ticketQuery, err := o.TicketQuery(req.Condition(), req.Filter())
	if err != nil {
		return nil, err
	}
	if len(ticketQuery) == 0 {
		return nil, qccupy.TicketQueryEmptyErr
	}

	// 2.登录
	userToken, err := o.UserLogin(req.Username(), req.Password())
	if err != nil {
		return nil, err
	}

	// 2.检验登录
	var ok bool
	if ok, err = o.LoginCheck(userToken); err != nil {
		return nil, err
	}
	if !ok {
		return nil, qccupy.LoginCheckErr
	}

	// 3.下单
	submitOrderResp, err := o.SubmitOrderRequest(&request.SubmitOrderRequestReq{
		SecretStr:            ticketQuery[0]["secretStr"].(string),
		TrainDate:            req.Condition()["train_date"],
		TourFlag:             req.TourFlag(),
		PurposeCodes:         req.Condition()["purpose_codes"],
		BackTrainDate:        time.Now().Format("2006-01-02"),
		QueryFromStationName: req.Condition()["query_from_station_name"],
		QueryToStationName:   req.Condition()["query_to_station_name"],
	}, userToken)
	if err != nil {
		return nil, err
	}
	if !submitOrderResp.SubmitOrderStatus() {
		return nil, qccupy.SubmitOrderErr
	}
	return nil, nil
}
