#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

read -p "Press enter to see all files in subdir that START WITH echo... " Enter
grep --colour=always -r "^echo"