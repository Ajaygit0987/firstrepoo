#!/bin/bash
for i in $*
do

     fact=1
     num=$i
     while [ $i -gt 1 ]
     do
          fact=`expr $fact \* $i`
          i=`expr $i - 1`
     done

          echo "factorial of $num is $fact"
done


     
     
