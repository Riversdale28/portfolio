#!/bin/bash

# Author:  Margot Mills
# Date:  30 January 2022
# Version No:  

# Type in the name of a folder you wish to copy
read -p "type the name of the folder you would like to copy : " folderName

# comment: if the name is a valid directory, do the following
if [ -d "$folderName" ]; then

# comment: copy it to a new location
read -p "type the name of the destination folder: " newFolderName
cp -r "$folderName" "$newFolderName"

else
# comment: otherwise, print an error message
echo "I counldn't find that folder"

fi
