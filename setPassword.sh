#!/bin/bash

# Author:  Margot Mills
# Date:  30 January 2022
# Version No:  

# To enter a silent password and store its hash value in file password.txt

#echo "Enter silent password : "
read -sp 'password  : ' pass_var
echo
#echo "password is : $pass_var"
echo "$pass_var" > password.txt
echo "$pass_var" > secret.txt

# comment: Hash the password in password.txt 
#var_hash=$(echo $pass_var | sha256sum)
#echo "Hash value of password.txt is :  $var_hash"
echo "Password has been changed"
echo
