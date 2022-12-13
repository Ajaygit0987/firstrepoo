#!/bin/bash
while read var
do
age=`echo $var | awk -F ":" '{print $NF}'`
if [ $age -gt 30 ]
then
name=`echo $var |awk -F ":" '{print $1}'`
echo $name
fi
done<empid


