#!/bin/bash
var="2 4 6 7"
for i in $var
do
sum=`expr $sum + $i`
done
echo $sum

