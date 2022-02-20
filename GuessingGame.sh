#!/bin/bash
 
# Author:  Margot Mills
# Date: February 2022
# Version:  

printError()
{
# echo -e enables interpretation of \ char  This is code RED
echo -e "\033[31mERROR:\033[0m $1"
}

Return_var()
{
    # return causes a function to stop executing and return the value specified
    # by n to its caller.  if n is omitted. return status is that of the 
    # last command executed in the function body

    return $1
    echo 
}
    
#This function will get a value between the 2nd and 3rd arguments
getNumber()
   {
        read -p "$1: "

        while (( $REPLY < $2 || $REPLY > $3 )); do
        echo
        printError "Input must be between $2 and $3"
        read -p "$1: "
        done

        while (( $REPLY != $4 )); do
        echo
        if [[ $REPLY -lt $2 || $REPLY -gt $3 ]]; then
        printError "Input must be between $2 and $3"
        fi
        
        if [[ $REPLY -lt $4 && $REPLY -gt $2 ]]; then
        echo "Too Low!..  guess again "
        elif [[ $REPLY -gt $4 && $REPLY -lt $3 ]]; then
        echo "Too High! ... guess again"
        fi

        read -p "$1: "

        done

        echo "Right!"
        echo

    }

getNumber "Guess a number between 1 and 100 " 1 100 42

exit 0


   





