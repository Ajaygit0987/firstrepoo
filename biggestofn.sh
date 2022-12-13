#!/bin/bash
big=$1
for i in $*
do

if [ $i -gt $big ]
then
big=$i
fi
done
echo "biggest of $* number is $big"

