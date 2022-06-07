package request

import (
	"encoding/json"
	"fmt"
)

var temp = PassengerTickets{
	{
		SeatType:      "",
		TicketType:    "1",
		Name:          "刘时明",
		IdType:        "1",
		IdNo:          "4312***********099",
		PhoneNo:       "177****2028",
		AllEncStr:     "4ec7eca8549348f89d317be609fb9b68c5aaf7f83d83b0ce1f52934ac1b4d8a68a6d6a174980fe404fa6f1c9507cb4ff043734c6d060c40fa91f3b63e582ba0b398f46778c1e2260d5c5ec417831e72fc3c061599fb398a18d1e936d2f15b04d",
		PassengerType: "1",
		OnlyId:        "normalPassenger_0",
		SaveStatus:    "",
	},
}

func ExamplePassengerTickets_GetPassengerTickets() {
	// Output: ,0,1,刘时明,1,4312***********099,177****2028,N,4ec7eca8549348f89d317be609fb9b68c5aaf7f83d83b0ce1f52934ac1b4d8a68a6d6a174980fe404fa6f1c9507cb4ff043734c6d060c40fa91f3b63e582ba0b398f46778c1e2260d5c5ec417831e72fc3c061599fb398a18d1e936d2f15b04d
	fmt.Println(temp.GetPassengerTickets())
}

func ExamplePassengerTickets_GetOldPassengers() {
	jsonStr := `[{"passenger_name":"刘时明","sex_code":"M","sex_name":"男","born_date":"1998-01-04 00:00:00","country_code":"CN","passenger_id_type_code":"1","passenger_id_type_name":"中国居民身份证","passenger_id_no":"4312***********099","passenger_type":"1","passenger_type_name":"成人","mobile_no":"177****2028","phone_no":"","email":"487005831@qq.com","address":"","postalcode":"","first_letter":"LSM","recordCount":"3","total_times":"99","index_id":"0","allEncStr":"4ec7eca8549348f89d317be609fb9b68c5aaf7f83d83b0ce1f52934ac1b4d8a68a6d6a174980fe404fa6f1c9507cb4ff043734c6d060c40fa91f3b63e582ba0b398f46778c1e2260d5c5ec417831e72fc3c061599fb398a18d1e936d2f15b04d","isAdult":"Y","isYongThan10":"N","isYongThan14":"N","isOldThan60":"N","if_receive":"Y","is_active":"N","is_buy_ticket":"N","last_time":"20210119194945","passenger_uuid":"7e727e562ff32315039fa213d308123cef844f4625db9e2056e1e63c2aff70a9","gat_born_date":"","gat_valid_date_start":"","gat_valid_date_end":"","gat_version":""},{"passenger_name":"黄满云","sex_code":"F","sex_name":"女","born_date":"1976-04-06 00:00:00","country_code":"CN","passenger_id_type_code":"1","passenger_id_type_name":"中国居民身份证","passenger_id_no":"4330***********105","passenger_type":"1","passenger_type_name":"成人","mobile_no":"177****6858","phone_no":"","email":"","address":"","postalcode":"","first_letter":"HMY","recordCount":"3","total_times":"99","index_id":"1","allEncStr":"dd7a7d50923148924344a8a067f8e7abe332cc2304a7bde8b4944a48c80e884809effc4b5b6597dfa354b50681aa99714fbbe4e1b609291eec28a0091676a611c3c061599fb398a18d1e936d2f15b04d","isAdult":"Y","isYongThan10":"N","isYongThan14":"N","isOldThan60":"N","if_receive":"Y","is_active":"N","is_buy_ticket":"N","last_time":"20220504154220","passenger_uuid":"7edf1b63bb691dbdae54c068b48304e9ac7032821ba9ad1c8f8ea0640c03ec8a","gat_born_date":"","gat_valid_date_start":"","gat_valid_date_end":"","gat_version":""},{"passenger_name":"缪丹艳","sex_code":"F","sex_name":"女","born_date":"1996-11-04 00:00:00","country_code":"CN","passenger_id_type_code":"1","passenger_id_type_name":"中国居民身份证","passenger_id_no":"4414***********808","passenger_type":"1","passenger_type_name":"成人","mobile_no":"134****4991","phone_no":"","email":"","address":"","postalcode":"","first_letter":"MDY","recordCount":"3","total_times":"99","index_id":"2","allEncStr":"e8c261b294dd81e6be27ed88a0b5bb568060e3518aceb55b1ff7e73a549bdacbc42157c66d6f996840b3cee96aa1f2c18e12cea31360320ab88482f9017260d9c3c061599fb398a18d1e936d2f15b04d","isAdult":"Y","isYongThan10":"N","isYongThan14":"N","isOldThan60":"N","if_receive":"Y","is_active":"N","is_buy_ticket":"N","last_time":"20220530195742","passenger_uuid":"58e9806b427a7ba20faf68d619b07ffbe47996fd09009dfeb9dbe927334bed58","gat_born_date":"","gat_valid_date_start":"","gat_valid_date_end":"","gat_version":""}]`
	var array []NormalPassenger
	if err := json.Unmarshal([]byte(jsonStr), &array); err != nil {
		panic(err)
	}
	var normalPassengers []interface{}
	for _, v := range array {
		normalPassengers = append(normalPassengers, v)
	}
	// Output: 刘时明,1,4312***********099,1_
	fmt.Println(temp.GetOldPassengers("dc", normalPassengers))
}
