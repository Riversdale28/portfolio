#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

read -p "Press enter for ECHO STATEMENTS IN DOUBLE QUOTES AND END WITH !... " Enter
grep --colour=always -r 'echo .*\".*!\"'