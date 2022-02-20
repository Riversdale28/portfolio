#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

read -p "Press enter to see the word NEEDLE highlighted in text... " Enter
grep --colour=always  needle haystack.txt
