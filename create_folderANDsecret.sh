#!/bin/bash

# this script will create a new folder, then change into that folder
# need to use command source ./file.sh to run script when changing directories

read -p "Enter name for new folder : " new_folder
mkdir "$new_folder"
echo "New folder is : $new_folder"
ls
echo
echo

# Changing into the new folder

echo "Now changing into new folder ..."
echo
cd ./"$new_folder"
echo

# Entering a silent password
echo "Enter silent password : "
read -sp 'password  : ' pass_var
echo
# echo "password is : $pass_var"
echo "$pass_var" > secret.txt
echo pass_var | sha256sum
