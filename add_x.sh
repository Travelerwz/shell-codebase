#!/bin/bash
#参数是文件名
#自动给文件加可执行权限，并且执行文件
if [ -n "$1" ]
then
	echo "$1"
	chmod +x $1
	./$1
else
	echo "please input filename"

fi
