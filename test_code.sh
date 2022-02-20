#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:

count=1
for (( i = 0; i < 5000; i++ ))
do
    for (( j = 0; j < 5000; J++ ))
    do
        for (( k = 0; k < 5000; k++ ))
        do
            echo "repeated $count times"
            (( count++ ))
        done
    done
done 
