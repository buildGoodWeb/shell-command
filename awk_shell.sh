#!/bin/bash

# 命令行方式
# awk [-F field-separator] 'commands' input-file
# command是awk的命令， [-F域分隔符]可选

# awk的工作流程是这样：
# 读入有'\n'换行符分割的一条记录，然后将记录按指定的域分割符划分域。默认域分隔符是“空白键”或“[tab]键”

echo 'show passwd name and shell:'
echo '--------------------------'
cat /etc/passwd | awk -F ':' '{print $1"\t"$7}'
echo '-----------------------------'


# 搜索/etc/passwd有root关键字的所有行
awk -F: '/root/' /etc/passwd
# 搜索/etc/passwd有root关键字的所有行，并显示对应的shell
awk -F: '/root/{print $7}' /etc/passwd

# 统计/etc/passwd的账户人数
awk '{count++;print $0;} END{print "user count is ", count}' /etc/passwd

# 统计某个文件夹下的文件占用的字节数
ls -l |awk 'BEGIN {size=0;} {size=size+$5;} END{print "[end]size is ", size}'
# 以M为单位显示:
ls -l |awk 'BEGIN {size=0;} {size=size+$5;} END{print "[end]size is ", size/1024/1024,"M"}'
