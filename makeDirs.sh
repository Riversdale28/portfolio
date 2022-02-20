#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  
 
 # if there aren't three arguments for the scipt


 if (($#!=3)); then
    #Print an error and exit
    echo "Error, provide three numbers" && exit 1
 fi 


 #For every number between the first argument and the last
 cd ~/scripts/portfolio31/
 for ((i=$1;i<=$3;i++))
 do
    #Create a mew folder for that number
    echo "Creating directory week$i"
    mkdir "week$i"
done
