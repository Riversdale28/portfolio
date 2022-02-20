#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

read -p "Press enter for ECHO STATEMENTS starting with UPPERCASE IN QUOTES..." Enter
grep --colour=always -r 'echo .*\"[A-Z].*\"'