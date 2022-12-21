#!/bin/bash

if [ $# -eq 3 ];
then

     if [ $1 -gt $2 ] && [ $1 -gt $3 ];
     then  
             echo "$1 is bigger"
     elif [ $2 -gt $1 ] && [ $2 -gt $3 ];
     then 
             echo "$2 is bigger"
     else
             echo "$3 is bigger"
     fi

else
              echo "pass only 3 arguments"
fi

