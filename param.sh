#!/bin/bash

#参数个数
echo "the param num is $#"

#输出所有参数
echo "the param name is $*"

#输出命令名称
echo "the order is $0"

#输出最后命令退出状态,0是正常,其他值是有错误的
echo "the status is $?"

#输出第一个参数和第二个参数
echo -e "\$1 = $1; \n\$2 = $2"

