#!/bin/bash
sum=0
#sum=`expr $1 + $2`
(( sum=$1+$2 ))
echo "sum of $1 and $2 is $sum"

