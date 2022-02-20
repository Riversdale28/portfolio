#!/bin/bash
read -p "type the name of the folder you would like to copy : " folderName

# comment: if the name is a valid directory, do the following
if [ -d "$folderName" ]; then

# comment: copy it to a new location
read -p "type the name of the destination folder: " newFolderName
cp -r "$folderName" "$newFolderName"

else
# comment: othersied, print and error
echo "I counldn't find that folder"

fi

exit 0
