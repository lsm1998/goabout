package api

import (
	"context"
	"crypto/hmac"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"net/http"
	"strings"
	"time"
)

type tencentApi struct {
	SecretId, SecretKey string
}

func NewTencentApi(secretId, secretKey string) CertificateApi {
	return &tencentApi{
		SecretId:  secretId,
		SecretKey: secretKey,
	}
}

func sha256hex(s string) string {
	b := sha256.Sum256([]byte(s))
	return hex.EncodeToString(b[:])
}

func hmacsha256(s, key string) string {
	hashed := hmac.New(sha256.New, []byte(key))
	hashed.Write([]byte(s))
	return string(hashed.Sum(nil))
}

func (t *tencentApi) baseHeader(action, payload string) http.Header {
	algorithm := "TC3-HMAC-SHA256"
	result := make(http.Header)
	result.Set("Host", "cvm.tencentcloudapi.com")
	result.Set("Content-Type", "application/json; charset=utf-8")
	result.Set("X-TC-Action", strings.ToLower(action))

	service := "cvm"

	timestamp := time.Now().Unix()

	date := time.Unix(timestamp, 0).UTC().Format("2006-01-02")
	credentialScope := fmt.Sprintf("%s/%s/tc3_request", date, service)

	hashedRequestPayload := sha256hex(payload)

	signedHeaders := "content-type;host;x-tc-action"

	canonicalHeaders := fmt.Sprintf("content-type:%s\nhost:%s\nx-tc-action:%s\n",
		"application/json; charset=utf-8", "cvm.tencentcloudapi.com", strings.ToLower(action))

	canonicalRequest := fmt.Sprintf("%s\n%s\n%s\n%s\n%s\n%s",
		"POST",
		"/",
		"",
		canonicalHeaders,
		signedHeaders,
		hashedRequestPayload)

	hashedCanonicalRequest := sha256hex(canonicalRequest)

	string2sign := fmt.Sprintf("%s\n%d\n%s\n%s",
		algorithm,
		timestamp,
		credentialScope,
		hashedCanonicalRequest)

	secretDate := hmacsha256(date, "TC3"+t.SecretKey)
	secretService := hmacsha256(service, secretDate)
	secretSigning := hmacsha256("tc3_request", secretService)

	signature := hex.EncodeToString([]byte(hmacsha256(string2sign, secretSigning)))

	authorization := fmt.Sprintf("%s Credential=%s/%s, SignedHeaders=%s, Signature=%s",
		algorithm,
		t.SecretId,
		credentialScope,
		"content-type;host;x-tc-action",
		signature)
	result.Set("Authorization", authorization)
	return result
}

func (t *tencentApi) DownloadCertificateUrl(ctx context.Context, req DownloadCertificateUrlReq) (DownloadCertificateUrlResp, error) {
	return DownloadCertificateUrlResp{}, nil
}

func (t *tencentApi) CertificateList(ctx context.Context, req CertificateListReq) (CertificateListResp, error) {
	return CertificateListResp{}, nil
}
