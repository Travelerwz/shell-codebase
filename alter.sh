:'
文件名中的oldboy字符串全部改成oldgirl(最好用for循环实现),并且将扩展名html全部改成大写。
'

#!/bin/bash

cd ./oldboy

for i in $(ls *html)
do 
	filename=$(echo $i|cut -c -10)
	mv $i ${filename}_oldgirl.HTML
done
