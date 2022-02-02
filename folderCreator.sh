#!/bin/bash

# Author:  Margot Mills
# Date:  30 January 2022
# Version No:  

# To create a new folder... 

read -p "type the name of the folder you would like to create :  " folderName
mkdir "$folderName"
echo "New folder is :  " $folderName
echo
exit 0