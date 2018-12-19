#!/bin/bash

#判断‘abcd’是否在hello.sh中
if grep "abcd" hello.sh > /dev/null 2>&1
then
	echo "exist"
else
	echo "no exist"
fi
