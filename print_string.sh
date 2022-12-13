#!/bin/bash
echo "enter the string"
read str
echo "enter the which character to start print"
read start
echo "enter how many character to print"
read length
sub_str=${str:$start:$length}
echo "$sub_str"

