#!/bin/bash
echo "enter the process to check itd running or not"
read var
for i in $var
do
process=`ps -ef | grep $i |grep -v grep|wc -l`
if [[ "$process" -gt 0 ]]
then
echo "$i process is running"
else
echo "$i process  not running "
fi
done

