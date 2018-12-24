:'
使用for循环在/oldboy目录下批量创建10个html文件，
其中每个文件需要包含10个随机小写字母加固定字符串oldboy，
名称示例如下：
abagdjgeac_oldboy.html  cbceiddgab_oldboy.html  fcebdehcab_oldboy.html  jebabfdjaf_oldboy.html
bgihcacgai_oldboy.html  cdbceecfab_oldboy.html  feeadhciai_oldboy.html

'


#!/bin/bash

#determines whether the floder exists
if [ ! -d oldboy ]
then 
	mkdir oldboy
fi

cd oldboy
#循环创建文件
for ((i=0;i<10;i++))
do
#uuidgen是生成uuid的命令，tr替换，cut裁剪
	filename=$(uuidgen|tr '0-9' 'a-z'|tr '-' 'a-z'|cut -c 1-10)
	touch ${filename}_oldboy.html
done
