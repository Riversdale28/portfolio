#!/bin/bang

# if code copied from menu.sh
   if [ "$choice_var" -eq 1 ]; then
    ./folderCreator.sh
    fi 

    if [ "$choice_var" -eq 2 ]; then
    ./folderCopier.sh
    fi 

    if [ "$choice_var" -eq 3 ]; then
    ./setPassword.sh
    fi 
