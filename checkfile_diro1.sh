#!/bin/bash
echo "enter the name to check"
read name
if [ -f $name ]
then
  echo "content of file"
       cat $name
  echo "line in a file"
       wc -l $name
elif [ -d $name ]
then
 ls -lrt $name |grep "^-" 
fi
