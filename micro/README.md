### 安装micro protoc

go install github.com/golang/protobuf/protoc-gen-go

go install go-micro.dev/v4/cmd/protoc-gen-micro@v4

### dashboard仪表盘

go install github.com/asim/go-micro/cmd/dashboard/v4@latest

dashboard --registry etcd --server_address :4000

docker run -d --name micro-dashboard -p 8082:8082 xpunch/go-micro-dashboard:latest

http://localhost:4000（默认admin@123456）

## ETCD

docker network create app-tier --driver bridge

docker run -d --name etcd-server \
--network app-tier \
--publish 2379:2379 \
--publish 2380:2380 \
--env ALLOW_NONE_AUTHENTICATION=yes \
--env ETCD_ADVERTISE_CLIENT_URLS=http://etcd-server:2379 \
bitnami/etcd:latest
