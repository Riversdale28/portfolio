#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

# These examples use grep -r to search all subdirectories ..

read -p "Press enter to see every occurrence of the word SED....." enter
grep --colour=always -r sed

read -p "Press enter to see all lines that START WITH THE LETTER m....." enter
grep --colour=always -r "^[m]"

read -p "Press enter to see all lines that contain THREE DIGIT NUMBERS....." enter
grep --colour=always -r -E '\<[0-9]{3}\>'

read -p "Press enter to see all echo statements with at least THREE WORDS....." enter
grep --colour=always -r -inoE '^echo(\W+\w+){0,3}'


read -p "Press enter to see all lines that would make a good password!....." enter
read -p "USING:  grep --colour=always -r -inoE '\w{4,10}[@#$%][\w@#$%]' NOT WORKING" x
grep --colour=always -r -inoE '\w{4,10}[@#$%][\w@#$%]'

exit 0