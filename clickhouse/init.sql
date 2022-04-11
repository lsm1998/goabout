-- 创建数据库
CREATE
DATABASE yidu

-- 创建数据表
CREATE TABLE yidu.clickStream
(
    ustomer_id       String,
    time_stamp       Date,
    click_event_type String,
    -- FixedString 固定长度字符串，会自动补位
    page_code        FixedString(20),
    source_id        UInt64
) ENGINE=MergeTree()
ORDER BY (time_stamp)

-- 创建分区数据表
CREATE TABLE yidu.order_merge_tree
(
    id           UInt64,
    sku_id       String,
    out_trade_no String,
    total_amount DECIMAL(16, 2),
    create_time  Datetime
) ENGINE=MergeTree()
partition by toYYYYMMDD(create_time)
ORDER BY (id,sku_id)
primary key (id);
