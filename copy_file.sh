#!/bin/bash

#创建文件夹
#检查文件夹是否存在
if [ ! -d "wz" ];then
mkdir wz
else
echo "dictory is exist"
fi

#拷贝所有的文件到文件夹

if [ ! -f "wz/2.sh" ];then
cp *.sh wz
else
echo "error"
fi

