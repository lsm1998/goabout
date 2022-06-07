package _12306

import (
	"context"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"reptile/qccupy"
	"reptile/qccupy/_12306/request"
	"testing"
	"time"
)

func Test_ticketHttpClient_LeftTicketQuery(t *testing.T) {
	KyfwClient := NewKyfwClient(context.Background(), "https", "kyfw.12306.cn", 5*time.Second)
	condition := qccupy.ConditionMap{
		"to_station":    "IFQ",
		"from_station":  "IOQ",
		"train_date":    "2022-06-04",
		"purpose_codes": "ADULT",
		"no_seat":       "1"}
	var filter = CrFilters{
		// {Site: "无座", Type: "K"},
	}
	result, err := KyfwClient.TicketQuery(condition, filter)
	assert.Nil(t, err)
	for _, v := range result {
		v["secretStr"] = ""
		t.Log(v)
	}
}

func Test_initIP(t *testing.T) {
	t.Log(initIP("kyfw.12306.cn"))
}

func Test_kyfwClient_UserLogin(t *testing.T) {
	KyfwClient := NewKyfwClient(context.Background(), "https", "kyfw.12306.cn", 5*time.Second)

	trainDate := "2022-06-10"
	tourFlag := "dc"
	purposeCodes := "ADULT"
	queryFromStationName := "深圳"
	queryToStationName := "深圳坪山"

	condition := qccupy.ConditionMap{
		"to_station":    "IFQ",
		"from_station":  "IOQ",
		"train_date":    trainDate,
		"purpose_codes": purposeCodes,
		"no_seat":       "1"}
	var filter = CrFilters{
		// {Site: "无座", Type: "K"},
	}
	ticketQuery, err := KyfwClient.TicketQuery(condition, filter)
	t.Log(ticketQuery)

	token, err := KyfwClient.UserLogin("17774582028", "LSMsky123")
	assert.Equal(t, err, nil)
	t.Log(token)

	submitOrderStatus, err := KyfwClient.SubmitOrderRequest(&request.SubmitOrderRequestReq{
		SecretStr:            ticketQuery[0]["secretStr"].(string),
		TrainDate:            trainDate,
		TourFlag:             tourFlag,
		PurposeCodes:         purposeCodes,
		BackTrainDate:        time.Now().Format("2006-01-02"),
		QueryFromStationName: queryFromStationName,
		QueryToStationName:   queryToStationName,
	}, token)
	t.Log(submitOrderStatus)

	passenger, err := KyfwClient.GetPassenger(&request.GetPassengerReq{
		RepeatSubmitToken: uuid.NewString(),
	}, token)
	assert.Equal(t, err, nil)
	t.Log(passenger)
}
