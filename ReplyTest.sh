#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

# REPLY is a built-in function
echo
echo -n "what is your favourite vegetable? "
read
echo "Your favourite vegetable is $REPLY... "
# $REPLY  holds the value of last "read" if and only if no variable is supplied

echo 
echo -n "What is your favourite fruit?..."
read fruit
echo "Your favourite fruit is $fruit"

#  But the value of $REPLY is still $REPLY, its previous value
echo
echo "the Value of \$REPLY is still $REPLY ..."
