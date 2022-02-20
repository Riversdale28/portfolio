#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  
 
input="./filenames.txt"
while IFS= read -r line
 do 
    echo "$line"
    FILE=$line

    if test -f "$FILE"; then
    echo "$line file exists..."
    else
    
      if test -d "$FILE"; then
      echo "$line directory exists ..."
      else

    echo "$line file or directory does not exist..."
      fi
    fi
   
 done < "filenames.txt"

 exit 0

 