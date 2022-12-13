#!/bin/bash
space=`df -h . |awk -F " " '{print $(NF-1)}' | tail -1 | sed 's/%/ /g'`
if [ $space -gt 20 ]
then
    echo " disk space is full"
fi
