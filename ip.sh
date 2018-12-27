#!/bin/bash
:'
搜索10.7.99.xx网段的可用ip，存储在ip.txt中
'
for i in 10.7.99.{1..254}
do
	ping -c 2 -w 2 $i >> /dev/null
	if [ $? -eq 0 ]
	then 
	echo $i is used!
	else
	echo $i >> /tmp/ip.txt
	fi
done

