package api

import "context"

type CertificateApi interface {
	DownloadCertificateUrl(context.Context, DownloadCertificateUrlReq) (DownloadCertificateUrlResp, error)

	CertificateList(context.Context, CertificateListReq) (CertificateListResp, error)
}

type DownloadCertificateUrlReq struct {
	// 证书ID
	CertificateId string `json:"certificate_id"`
	// 证书类型
	CertificateType string `json:"certificate_type"`
}

type DownloadCertificateUrlResp struct {
	// 证书下载地址
	DownloadUrl string `json:"download_url"`
}

type CertificateListReq struct {
	// 分页偏移量
	Offset uint32 `json:"offset"`
	// 每页数量
	Limit uint32 `json:"limit"`
	// 域名
	Domain string `json:"domain"`
	// 是否即将到期 大于0表示查询即将到期的证书
	IsExpireSoon int `json:"is_expire_soon"`
}

type CertificateListResp struct {
	// 总数
	Total uint32 `json:"total"`
	// 证书列表
	Certificates []Certificate `json:"certificates"`
}

type Certificate struct {
	// 证书ID
	CertificateId string `json:"certificate_id"`
	// 证书类型
	CertificateType string `json:"certificate_type"`
	// 域名
	Domain string `json:"domain"`
	// 来源
	From string `json:"from"`
	// 证书状态
	Status int `json:"status"`
	// 证书生效时间
	CertBeginTime string `json:"cert_begin_time"`
	// 证书过期时间
	CertEndTime string `json:"cert_end_time"`
}
