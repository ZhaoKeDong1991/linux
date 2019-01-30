#!/bin/bash
ulimit -Hn 100000
ulimit -Sn 100000
echo "*	soft	nofile	100000" >> /etc/security/limits.conf
echo "*	hard	nofile	100000" >> /etc/security/limits.conf

num=`ulimit -a | grep 'open files' | awk '{print $4}'`
echo -e "\033[42;37m 打开文件最大数为：${num} 设置成功！\033[0m"
