package string

/**
字符集

ASCII字符集 使用7位（bits）表示一个字符，共128字符，ASCII扩展字符集使用8位（bits）表示一个字符，共256字符

Unicode字符集 Unicode是字符集，UTF-32/ UTF-16/ UTF-8是三种字符编码方案
UTF-32 使用4字节的数字来表达每个字母、符号，或者表意文字
UTF-16 使用2字节的数字来表达每个字母、符号，或者表意文字
UTF-8 针对Unicode的可变长度字符编码，使用一至四个字节为每个字符编码

变长编码如何划分边界？
使用高位存储占用字节数
例如 00000001 表示只占一个字节，结果为1对应的字符
例如 11100100 10111000 10010110 则表示占用3个字节，结果为19990对应的字符
*/