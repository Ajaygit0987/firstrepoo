#!/bin/bash
df -h  |awk -F " " '{print $(NF-1)}' |tail -n+2 |sed 's/%/ /g' > file
while read var
do
if [ $var -eq 20 ]
then 
echo "disk space exceeds"
else
echo "disk space is not exceeds"
fi
done<file

