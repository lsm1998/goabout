对于结构体字段赋值的一个小问题

例如：
s := Struct{}
fmt.Println(s, SetField(&s))

SetField对Struct的字段进行修改，在一行代码中同时调用SetField，并使用s，且接受s的类型是interface{}，同时传递指针对象
此时针对Struct结构会导致不同的结果

如果Struct有多个字段
    SetField是不生效的

如果Struct只有一个字段
    则对于int8、bool（一个字节）是不生效的，其他类型可以生效
