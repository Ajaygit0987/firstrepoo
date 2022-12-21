#!/bin/bash
count=1
while read var
do
word=`echo $var | wc -w`
char=`echo $var | wc -c`
echo "linenum $count:no of $word:$words no of char:$char"
count=`expr $count + 1`
done<add_num.sh

