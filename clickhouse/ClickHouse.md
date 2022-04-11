### docker安装clickhouse

mkdir -p /opt/clickhouse/log
mkdir -p /opt/clickhouse/data

docker run -d --name my_clickhouse --ulimit nofile=262144:262144 \
-p 8123:8123 -p 9000:9000 -p 9009:9009 --privileged=true \
-v /opt/clickhouse/log:/var/log/clickhouse-server \
-v /opt/clickhouse/data:/var/lib/clickhouse \
clickhouse/clickhouse-server:22.2.3.5

### OLTP和OLAP

**OLTP 联机事务处理**

是传统关系型数据库的主要应用，用来执行一些基本的、日常的事务处理
比如数据库记录的增、删、改、查等等

**OLAP 联机分析处理**

是分布式数据库的主要应用，它对实时性要求不高，但处理的数据量大
通常应用于复杂的动态报表系统上

### 行存储和列存储

传统的关系型数据库，如 Oracle、DB2、MySQL、SQL SERVER 等采用行式存储法(Row-based)，在基于行式存储的数据库中， 数据是按照行数据为基础逻辑存储单元进行存储的， 一行中的数据在存储介质中以连续存储形式存在。

列式存储(Column-based)是相对于行式存储来说的，新兴的 Hbase、HP Vertica、EMC Greenplum 等分布式数据库均采用列式存储。在基于列式存储的数据库中， 数据是按照列为基础逻辑存储单元进行存储的，一列中的数据在存储介质中以连续存储形式存在。

### 基本SQL格式

https://clickhouse.com/docs/zh/

### clickhouse删除或者更新

每次删除或者更新都会废弃目标数据原有的分区，重建新的分区，批量操作可以一次性完成分区重建，相对高效

### 分片-分区-副本

**分区**
````
将一个表分成多个区块；
partition by 字段名，可以指定数据表按照某个字段分区；
````

**分片**
````
复用了分区的概念，在原有的分区下进行第二层分区；
分片是对数据库的横向扩展，将数据分为多个分片分布到不同节点；
````

**副本**
````
两个相同的数据表，作用是为了数据的备份与安全；
````

分区的作用是可以根据分区键搜索少量数据，而分片是可以在多台机器并行查询；
