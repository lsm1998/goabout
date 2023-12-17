package core

import (
	"gopkg.in/yaml.v3"
	"os"
)

var GlobalConfig NgxConfig

type NgxConfig struct {
	WorkerProcesses uint8 `json:"worker_processes" yaml:"worker_processes"`
	Events          struct {
		WorkerConnections uint32 `json:"worker_connections" yaml:"worker_connections"`
	} `json:"events" yaml:"events"`
	Http struct {
		Include          string `json:"include" yaml:"include"`
		DefaultType      string `json:"default_type" yaml:"default_type"`
		Sendfile         string `json:"sendfile" yaml:"sendfile"`
		KeepaliveTimeout uint32 `json:"keepalive_timeout" yaml:"keepalive_timeout"`
		Server           struct {
			Listen     string     `json:"listen" yaml:"listen"`
			ServerName string     `json:"server_name" yaml:"server_name"`
			ErrorPage  string     `json:"error_page" yaml:"error_page"`
			Location   []Location `json:"location" yaml:"location"`
		} `json:"server" yaml:"server"`
	} `json:"http" yaml:"http"`
	Pid  int
	Ppid int
}

func (c *NgxConfig) Init() {
	bytes, err := os.ReadFile("nginx.yaml")
	if err != nil {
		panic(err)
	}
	if err = yaml.Unmarshal(bytes, &GlobalConfig); err != nil {
		panic(err)
	}
	if GlobalConfig.Http.Include != "" {
		bytes, err = os.ReadFile(GlobalConfig.Http.Include)
		if err != nil {
			panic(err)
		}
	}
}
