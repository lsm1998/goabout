package _12306

import (
	"strings"
)

type CT struct {
	secretStr       string
	buttonTextInfo  string
	queryLeftNewDTO map[string]string
}

type CrFilters []CrFilter

func (arr CrFilters) Contains(item map[string]string) bool {
	if len(arr) == 0 {
		return true
	}
	for _, v := range arr {
		site := item[v.Site]
		if strings.Contains(item["车次"], v.Type) && site != "无座" && site != "--" {
			return true
		}
	}
	return false
}

type CrFilter struct {
	Site string
	Type string
}

func stringDefault(str, _default string) string {
	if str == "" {
		return _default
	}
	return str
}

func ct(cR []string, cT map[string]string) []map[string]interface{} {
	var cQ = make([]map[string]interface{}, 0)
	for cP := 0; cP < len(cR); cP++ {
		var cU = make(map[string]interface{}, 0)
		var cO = strings.Split(cR[cP], "|")
		cU["secretStr"] = cO[0]
		cU["buttonTextInfo"] = cO[1]
		var cS = make(map[string]string, 0)
		cS["train_no"] = cO[2]
		cS["station_train_code"] = cO[3]
		cS["start_station_telecode"] = cO[4]
		cS["end_station_telecode"] = cO[5]
		cS["from_station_telecode"] = cO[6]
		cS["to_station_telecode"] = cO[7]
		cS["start_time"] = cO[8]
		cS["arrive_time"] = cO[9]
		cS["lishi"] = cO[10]
		cS["canWebBuy"] = cO[11]
		cS["yp_info"] = cO[12]
		cS["start_train_date"] = cO[13]
		cS["train_seat_feature"] = cO[14]
		cS["location_code"] = cO[15]
		cS["from_station_no"] = cO[16]
		cS["to_station_no"] = cO[17]
		cS["is_support_card"] = cO[18]
		cS["controlled_train_flag"] = cO[19]
		cS["gg_num"] = stringDefault(cO[20], "--")
		cS["gr_num"] = stringDefault(cO[21], "--")
		cS["qt_num"] = stringDefault(cO[22], "--")
		cS["rw_num"] = stringDefault(cO[23], "--")
		cS["rz_num"] = stringDefault(cO[24], "--")
		cS["tz_num"] = stringDefault(cO[25], "--")
		cS["wz_num"] = stringDefault(cO[26], "--")
		cS["yb_num"] = stringDefault(cO[27], "--")
		cS["yw_num"] = stringDefault(cO[28], "--")
		cS["yz_num"] = stringDefault(cO[29], "--")
		cS["ze_num"] = stringDefault(cO[30], "--")
		cS["zy_num"] = stringDefault(cO[31], "--")
		cS["swz_num"] = stringDefault(cO[32], "--")
		cS["srrb_num"] = stringDefault(cO[33], "--")
		cS["yp_ex"] = cO[34]
		cS["seat_types"] = cO[35]
		cS["exchange_train_flag"] = cO[36]
		cS["houbu_train_flag"] = cO[37]
		cS["houbu_seat_limit"] = cO[38]
		cS["yp_info_new"] = cO[39]
		if len(cO) > 46 {
			cS["dw_flag"] = cO[46]
		}
		if len(cO) > 48 {
			cS["stopcheckTime"] = cO[48]
		}
		cS["from_station_name"] = cT[cO[6]]
		cS["to_station_name"] = cT[cO[7]]
		cU["queryLeftNewDTO"] = cS
		cQ = append(cQ, cU)
	}
	return cQ
}
