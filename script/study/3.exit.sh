#!/bin/bash
#脚本中的退出状态码。每一个脚本的运行在结束后都会返回一个结束码给shell，不同的结束码有不同的含义。
#状态码			描述
# 0			成功结束
# 1			通用的未知错误
# 2			误用shell命令
# 126			命令不可执行
# 127			没找到命令
# 128			无效退出参数
# 128+x			linux信号x的严重错误
# 130			命令通过ctrl+c结束
# 255			退出状态码越界
#状态码一共占8位，所有共有0-255种状态

#查看状态码：
#shell中用变量$?保存状态码，我们可以通过它获取状态码
echo $?

#自定义状态码
#shell脚本在退出时如果未经指定会按照最后一句脚本的执行状态返回状态码，也可以人为的修改退出状态码。
#通过对exit赋值来定义状态码
exit 64
#可以在终端使用echo $?查看

#状态码的范围在0-255之间，如果超过了这个最大值。超过部分将会从0开始计算，即255+1=0
#如果状态码为300的话，那么300-255=45.由于从零开始所以最终返回44
exit 300
#由于脚本在上面已经退出，所以要看结果的话就必须在终端输入并查看结果了