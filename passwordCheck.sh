#!/bin/bash


# Entering a silent password and testing match of existing password file

#echo "Enter silent password : "
read -sp 'password  : ' pass_var
echo
#echo "password is : $pass_var"
echo "$pass_var" > password.txt

# comment: Hash the password in password.txt 

var_hash=$(echo $pass_var | sha256sum)
#echo "Hash value of password.txt is :  $var_hash"
echo

# coment: now hash the existing secret passwword file
hashfile="secret.txt"
my_var=$(cat "$hashfile")
#echo " value of my variable is:  $my_var"
var_hash2=$(echo $my_var | sha256sum)

# comment:  visual test of variables only
echo "1:  $var_hash"
echo "2:  $var_hash2"
echo

# comment:  == is used to compare non-numeric variables
if [ "$var_hash" == "$var_hash2" ]; then
echo " Access Granted"
exit 0

else 
echo "Access Denied"
exit 1

fi
