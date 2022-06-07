package request

import (
	"fmt"
)

type (
	UserToken struct {
		Tk        string
		SessionId string
	}

	UserLogin struct {
	}

	baseModel struct {
		Httpstatus int  `json:"httpstatus"`
		Status     bool `json:"status"`
	}

	LeftTicketQueryReq struct {
		TrainDate    string `json:"leftTicketDTO.train_date"`
		FromStation  string `json:"leftTicketDTO.from_station"`
		ToStation    string `json:"leftTicketDTO.to_station"`
		PurposeCodes string `json:"purpose_codes"`
	}

	LeftTicketQueryResp struct {
		baseModel
		Data     LeftTicketQueryData `json:"data"`
		Messages string              `json:"messages"`
	}

	QueryUserInfoResp struct {
		baseModel
		ValidateMessagesShowId string `json:"validateMessagesShowId"`
		Data                   struct {
			Flag bool `json:"flag"`
		} `json:"data"`
	}
)

type (
	LeftTicketQueryData struct {
		Result []string          `json:"result"`
		Flag   string            `json:"flag"`
		Map    map[string]string `json:"map"`
	}

	UserLoginData struct {
		ResultCode    string `json:"result_code"`
		ResultMessage string `json:"result_message"`
		Uamtk         string `json:"uamtk"`
	}

	SubmitOrderRequestReq struct {
		SecretStr            string `json:"secret_str"`
		TrainDate            string `json:"train_date"`
		BackTrainDate        string `json:"back_train_date"`
		TourFlag             string `json:"tour_flag"`
		PurposeCodes         string `json:"purpose_codes"`
		QueryFromStationName string `json:"query_from_station_name"`
		QueryToStationName   string `json:"query_to_station_name"`
	}

	GetPassengerReq struct {
		RepeatSubmitToken string `json:"repeat_submit_token"`
	}

	SubmitOrderRequestResp struct {
		Data                   string      `json:"data"`
		HttpStatus             int32       `json:"httpstatus"`
		Messages               interface{} `json:"messages"`
		Status                 bool        `json:"status"`
		ValidateMessages       interface{} `json:"validate_messages"`
		ValidateMessagesShowId string      `json:"validate_messages_show_id"`
	}

	NormalPassenger struct {
		PassengerName       string `json:"passenger_name"`
		SexCode             string `json:"sex_code"`
		SexName             string `json:"sex_name"`
		BornDate            string `json:"born_date"`
		CountryCode         string `json:"country_code"`
		PassengerIdTypeCode string `json:"passenger_id_type_code"`
		PassengerIdTypeName string `json:"passenger_id_type_name"`
		PassengerIdNo       string `json:"passenger_id_no"`
		PassengerType       string `json:"passenger_type"`
		PassengerTypeName   string `json:"passenger_type_name"`
		MobileNo            string `json:"mobile_no"`
		PhoneNo             string `json:"phone_no"`
		Email               string `json:"email"`
		Address             string `json:"address"`
		Postalcode          string `json:"postalcode"`
		FirstLetter         string `json:"first_letter"`
		RecordCount         string `json:"recordCount"`
		TotalTimes          string `json:"total_times"`
		IndexId             string `json:"index_id"`
		AllEncStr           string `json:"allEncStr"`
		IsAdult             string `json:"isAdult"`
		IsYongThan10        string `json:"isYongThan10"`
		IsYongThan14        string `json:"isYongThan14"`
		IsOldThan60         string `json:"isOldThan60"`
		IfReceive           string `json:"if_receive"`
		IsActive            string `json:"is_active"`
		IsBuyTicket         string `json:"is_buy_ticket"`
		LastTime            string `json:"last_time"`
		PassengerUuid       string `json:"passenger_uuid"`
		GatBornDate         string `json:"gat_born_date"`
		GatValidDateStart   string `json:"gat_valid_date_start"`
		GatValidDateEnd     string `json:"gat_valid_date_end"`
		GatVersion          string `json:"gat_version"`
	}

	GetPassengerData struct {
		NotifyForGat     string            `json:"notify_for_gat"`
		IsExist          bool              `json:"isExist"`
		ExMsg            string            `json:"exMsg"`
		TwoIsOpenClick   []string          `json:"two_isOpenClick"`
		OtherIsOpenClick []string          `json:"other_isOpenClick"`
		NormalPassengers []NormalPassenger `json:"normal_passengers"`
		DjPassengers     []interface{}     `json:"dj_passengers"`
	}

	GetPassengerResp struct {
		ValidateMessagesShowId string           `json:"validateMessagesShowId"`
		Status                 bool             `json:"status"`
		Httpstatus             int              `json:"httpstatus"`
		Data                   GetPassengerData `json:"data"`
		Messages               interface{}      `json:"messages"`
		ValidateMessages       interface{}      `json:"validateMessages"`
	}

	CheckOrderInfoReq struct {
		CancelFlag         string `json:"cancel_flag"`
		BedLevelOrderNum   string `json:"bed_level_order_num"`
		PassengerTicketStr string `json:"passenger_ticket_str"`
		OldPassengerStr    string `json:"old_passenger_str"`
		TourFlag           string `json:"tour_flag"`
		RandCode           string `json:"rand_code"`
		WhatsSelect        string `json:"whats_select"`
		SessionId          string `json:"session_id"`
		Scene              string `json:"scene"`
		RepeatSubmitToken  string `json:"repeat_submit_token"`
	}

	CheckOrderInfoData struct {
		CanChooseBeds      string `json:"canChooseBeds"`
		CanChooseSeats     string `json:"canChooseSeats"`
		ChooseSeats        string `json:"choose_Seats"`
		IsCanChooseMid     string `json:"isCanChooseMid"`
		IfShowPassCodeTime string `json:"ifShowPassCodeTime"`
		SubmitStatus       bool   `json:"submitStatus"`
		SmokeStr           string `json:"smokeStr"`
	}

	CheckOrderInfoResp struct {
		ValidateMessagesShowId string             `json:"validateMessagesShowId"`
		Status                 bool               `json:"status"`
		Httpstatus             int                `json:"httpstatus"`
		Data                   CheckOrderInfoData `json:"data"`
		Messages               interface{}        `json:"messages"`
		ValidateMessages       interface{}        `json:"validateMessages"`
	}
)

func (c *CheckOrderInfoReq) CheckOrderInfoDataForm() string {
	return fmt.Sprintf("cancel_flag=%s&bed_level_order_num=%s&passengerTicketStr=%s&oldPassengerStr=%s&tour_flag=%s&randCode=%s&whatsSelect=%s&sessionId=%s&scene=%s&_json_att&REPEAT_SUBMIT_TOKEN=%s",
		c.CancelFlag, c.BedLevelOrderNum, c.PassengerTicketStr, c.OldPassengerStr, c.TourFlag, c.RandCode, c.WhatsSelect, c.SessionId, c.Scene, c.RepeatSubmitToken)
}

func (req *SubmitOrderRequestReq) SubmitOrderFromData() string {
	return fmt.Sprintf("secretStr=%s&train_date=%s&back_train_date=%s&tour_flag=%s&purpose_codes=%s&query_from_station_name=%s&query_to_station_name=%s&%s",
		req.SecretStr,
		req.TrainDate,
		req.BackTrainDate,
		req.TourFlag,
		req.PurposeCodes,
		req.QueryFromStationName,
		req.QueryToStationName,
		"undefined")
}

func (resp *SubmitOrderRequestResp) SubmitOrderStatus() bool {
	return resp.Status
}

func (g *GetPassengerReq) PassengerFromData() string {
	return fmt.Sprintf("_json_att=&REPEAT_SUBMIT_TOKEN=%s", g.RepeatSubmitToken)
}

func (u UserToken) GetToken() string {
	return u.Tk
}

func (u UserToken) GetSessionId() string {
	return u.SessionId
}
