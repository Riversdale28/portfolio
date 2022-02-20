#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  Lab exercise 2.4
 
 echo "enter the password"
 read password
 len="${#password}"
 
if test $len -ge 8; then
    echo "$password" | grep -q [0-9]

if test $? -eq 0; then
            echo "$password" | grep -q [A-Z]

if test $? -eq 0; then
            echo "$password" | grep -q [a-z]

if test $? -eq 0; then
            echo "$password" | grep -q [$,@,#,%] 

if test $? -eq 0; then
            echo "Strong password"

 else
            echo "Weak password - include special chars"
fi
        
else            
            echo "Weak password - include an lowercase chars"
fi
    
else
            echo "Weak password - include uppercase chars"
fi   
    
else
            echo "Please include numbers in the password - weak"
fi  
    
        
else
            echo "Password length should be greater than or equal to 8 chars - weak"        
fi
            
  