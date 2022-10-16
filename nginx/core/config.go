package core

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
			Locations  []struct{} `json:"locations" yaml:"locations"`
		} `json:"server" yaml:"server"`
	} `json:"http" yaml:"http"`
}

func (c *NgxConfig) Init() {

}
