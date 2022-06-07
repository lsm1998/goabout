package request

import (
	"bytes"
	"github.com/spf13/cast"
	"strings"
)

type PassengerTickets []PassengerTicket

type PassengerTicket struct {
	SeatType      string
	TicketType    string
	Name          string
	IdType        string
	IdNo          string
	PhoneNo       string
	SaveStatus    string
	AllEncStr     string
	PassengerType string
	OnlyId        string
}

func (p PassengerTickets) GetPassengerTickets() string {
	buffer := bytes.Buffer{}
	for i := 0; i < len(p); i++ {
		buffer.WriteString(p[i].SeatType)
		buffer.WriteString(",0,")
		buffer.WriteString(p[i].TicketType)
		buffer.WriteString(",")
		buffer.WriteString(p[i].Name)
		buffer.WriteString(",")
		buffer.WriteString(p[i].IdType)
		buffer.WriteString(",")
		buffer.WriteString(p[i].IdNo)
		buffer.WriteString(",")
		buffer.WriteString(p[i].PhoneNo)
		buffer.WriteString(",")
		if p[i].SaveStatus == "" {
			buffer.WriteString("N")
		} else {
			buffer.WriteString("Y")
		}
		buffer.WriteString(",")
		buffer.WriteString(p[i].AllEncStr)
		buffer.WriteString("_")
	}
	if buffer.Len() > 0 {
		return buffer.String()[0 : buffer.Len()-1]
	}
	return buffer.String()
}

func (p PassengerTickets) GetOldPassengers(tourFlag string, normalPassengers []interface{}) string {
	buffer := bytes.Buffer{}
	for i := 0; i < len(p); i++ {
		var temp = p[i]
		if tourFlag == "fc" || tourFlag == "gc" {
			buffer.WriteString(temp.Name)
			buffer.WriteString(",")
			buffer.WriteString(temp.IdType)
			buffer.WriteString(",")
			buffer.WriteString(temp.IdNo)
			buffer.WriteString(",")
			buffer.WriteString(temp.PassengerType)
			buffer.WriteString("_")
		} else {
			if strings.Index(temp.OnlyId, "djPassenger_") > -1 {
				//var aC = temp.only_id.split("_")[1]
				//var aB = M[aC].passenger_name + "," + M[aC].passenger_id_type_code + "," + M[aC].passenger_id_no + "," + M[aC].passenger_type
				//aE += aB + "_"
			} else {
				if strings.Index(temp.OnlyId, "normalPassenger_") > -1 {
					var aC = strings.Split(temp.OnlyId, "_")[1]
					passenger := normalPassengers[cast.ToInt(aC)].(NormalPassenger)
					buffer.WriteString(passenger.PassengerName)
					buffer.WriteString(",")
					buffer.WriteString(passenger.PassengerIdTypeCode)
					buffer.WriteString(",")
					buffer.WriteString(passenger.PassengerIdNo)
					buffer.WriteString(",")
					buffer.WriteString(passenger.PassengerType)
				}
				buffer.WriteString("_")
			}
		}
	}
	return buffer.String()
}
