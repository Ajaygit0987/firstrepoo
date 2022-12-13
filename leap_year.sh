#!/bin/bash
echo "enter the year to check"
read year
if [[ $year =~ ^[[:digit:]]+$ ]]
then
        #y=$(( $year % 4 ))
        y=`expr $year % 4`
        if [ $y -eq 0 ]
        then
             echo "mentined year $year is leap year"
        else
             echo "mentioned year  not a leap year"
fi
 
else
     echo "please enter only numbers"
fi
