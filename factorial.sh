#!/bin/bash
echo "enter the number to find factorial"
read var
fact=1
num=$var
while [ $var -gt 1 ]
do
fact=`expr $fact \* $var`
var=`expr $var - 1`
done
echo "factorial of $num is $fact"

