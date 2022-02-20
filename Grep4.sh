#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

read -p "Press enter to see statement that have echo with a FLAG..." Enter
grep --colour=always -r 'echo -.*'