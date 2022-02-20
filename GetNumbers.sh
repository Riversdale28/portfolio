#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

# This function prints a given error
# echo -e enables interpretation of \ char  This is code RED

printError()
{
echo -e "\033[31mERROR:\033[0m $1"
}
    
#This function will get a value between the 2nd and 3rd arguments
getNumber()
    {
        read -p " $1"
        while (( $REPLY < $2 || $REPLY > $3)); 
        do
        printError "Input must be between $2 and $3"
        echo ""
        read -p "$1"
        done
    }
echo ""
echo -e "\033[32mThis is the start of getting numbers\033[0m"
getNumber "Please type a number between 1 and 10 : " 1 10
echo "Thank you!"

getNumber "Please type a number between 50 and 100 : " 50 100
echo "Thank you!"
