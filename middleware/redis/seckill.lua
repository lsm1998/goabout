-- 获取库存
local value = redis.call("Get", KEYS[1])

if (value - KEYS[2] >= 0) then
    local leftStock = redis.call("DecrBy", KEYS[1], KEYS[2])
    -- 返回剩余库存
    return leftStock
else
    return -1
end
