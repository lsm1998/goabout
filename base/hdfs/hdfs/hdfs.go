package hdfs

import (
	"github.com/colinmarc/hdfs"
	"io/fs"
)

type Client struct {
	client *hdfs.Client
}

func NewClient(address []string, user string) (*Client, error) {
	options := hdfs.ClientOptions{
		Addresses: address,
		Namenode:  nil,
		User:      user,
	}
	client, err := hdfs.NewClient(options)
	return &Client{client: client}, err
}

// Open 打开文件
func (c *Client) Open(path string) (*hdfs.FileReader, error) {
	return c.client.Open(path)
}

// Create 创建文件
func (c *Client) Create(path string) (*hdfs.FileWriter, error) {
	return c.client.Create(path)
}

// Mkdir 创建文件夹
func (c *Client) Mkdir(path string) error {
	return c.client.Mkdir(path, fs.ModePerm)
}

// Size 获取文件大小
func (c *Client) Size(path string) (int64, error) {
	fileInfo, err := c.client.Stat(path)
	if err != nil {
		return 0, err
	}
	return fileInfo.Size(), nil
}

// List 列举文件
func (c *Client) List(path string) ([]string, error) {
	infos, err := c.client.ReadDir(path)
	if err != nil {
		return nil, err
	}

	var names []string
	for _, info := range infos {
		names = append(names, info.Name())
	}

	return names, nil
}

// Write 文件写入
func (c *Client) Write(path string, data []byte) (int, error) {
	writer, err := c.client.Create(path)
	if err != nil {
		return 0, err
	}
	return writer.Write(data)
}

// Append 文件追加
func (c *Client) Append(path string, data []byte) (int, error) {
	writer, err := c.client.Append(path)
	if err != nil {
		return 0, err
	}
	return writer.Write(data)
}

// Upload 文件上传
func (c *Client) Upload(src, dist string) error {
	return c.client.CopyToRemote(src, dist)
}

// Download 文件下载
func (c *Client) Download(src, dist string) error {
	return c.client.CopyToLocal(src, dist)
}
