#!/bin/bash



#函数说明：此脚本是时间倒计时
#参数输入
#参数1 输入分
#参数2 输入秒


function Timer()
{
for ((s=($2);s>=0;s--))
do
	echo -n "$1:$s"
	echo -ne "\r"
	sleep 1
done


min=$(($1-1))

if [ $min -lt "0" ]
then
	exit 1
else
	sec=60
	Timer $min $sec
fi


}	

#主函数
if [ $# -ne "2" ] && [ $2 -lt "60" ]
then 
	echo "please input two params:minute(not more 60) and second(not more60):"
fi

if [ $1 -ge "0" ] && [ $2 -ge "0" ] 
then
	Timer $1 $2
fi


#注：脚本执行最后一步存在异常，还未修正
