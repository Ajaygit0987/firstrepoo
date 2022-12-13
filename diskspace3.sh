#!/bin/bash
df -h>file
count=1
while read var
do
space=`echo $var |awk -F " " '{print $(NF-1)}' | sed 's/%/ /g'`

if [[ $space -gt 20 ]]
then
name=`echo $var |awk -F " " '{print $1}'`
echo "$name  $space%"
fi
done<file 
