#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

read -p "Press enter to see JUST THE WORD NEEDLE within text..... " Enter
grep --colour=always -o 'needle' haystack.txt
