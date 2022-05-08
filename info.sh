#!/bin/bash
echo "======date===================="

date
echo "======dir====================="
pwd
echo "======user====================="
whoami
echo "======uid====================="
id
echo "======hostname====================="
uname -n
echo "======sysver====================="
lsb_release -d
echo "======disksize====================="
df -h
echo "======rootsize====================="
df /
echo "======dirsize====================="
du -h --max-depth=1
echo "======dirview====================="
ls -l
echo "======interfaces====================="
ls /sys/class/net
echo "======ip=eth0===================="
ip addr show  dev eth0 | grep inet
echo "======TCP=ports=open==================="
ss -tlp
echo "======user=groups===================="
id -nG
echo "======passwd=myname================="
getent passwd | grep $(whoami)
