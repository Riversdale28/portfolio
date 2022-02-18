#!/bin/bash

# Author:  Margot Mills
# Date:  30 January 2022
# Version No:  

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

# comment: now hash the existing secret passwword file
hashfile="secret.txt"
my_var=$(cat "$hashfile")
#echo " value of my variable is:  $my_var"
var_hash2=$(echo $my_var | sha256sum)

# comment:  visual test of variables only
#echo "1:  $var_hash"
#echo "2:  $var_hash2"

#echo "Incorrect password ... "
echo


# comment:  == is used to compare non-numeric variables
if [ "$var_hash" == "$var_hash2" ]; then

echo " Access Granted"
echo -e "\033[31m" What would you like to do ?"\e[0m"

echo " 1. Create a folder "
echo " 2. Copy a folder "
echo " 3. Set a password " 
echo " 4. Calculator "
echo " 5. Create folders for weeks 4 - 6 in portfolio31 "
echo " 6. Check if files or directories exist "
echo " 7. Download a file from the Internet "
echo -e "\033[36m"... Type exit to quit...."\e[0m"
echo  "   "
echo
read -p 'Enter your choice at the prompt : ' choice_var
#echo $choice_var
echo -e "\033[32m" Checking for valid input... type exit to quit ..."\e[0m"
echo ""

while [ "$choice_var"  != "exit" ]
do
if [ "$choice_var" -lt 1 ]; then
    echo "Choice must be between 1 and 7 ... try again"
 else
    if [ "$choice_var" -gt 7 ]; then
    echo "Choice must be between 1 and 7 ... try again"
    fi
 fi    
 
read -p 'Confirm your choice at the prompt : ' choice_var
echo ""

case $choice_var in
    1) ./folderCreator.sh;;
    2) ./folderCopier.sh;;
    3) ./setPassword.sh;;
    4) ./arithmetic2.sh;;
    5) ./makeDirs.sh 4 5 6;;
    6) ./filenames.sh;;
    7) ./InternetDownloader.sh;;
    

esac
done
exit 0

else 
echo "Access Denied - goodbye! "
echo
exit 1

fi