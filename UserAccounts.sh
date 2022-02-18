#!/bin/bash
 
# Author:  Margot Mills
# Date:  18 Feb 2022
# Version:  99

# Reformatting file passwd using fields 1 3 4 5 6 7 - NOT 2
echo
echo "/etc/passwd formatted :"

awk 'BEGIN {
    FS=":";  # This sets the field separator to :

    print "_______________________________________________________________________________________________ "
    print "|\033[34m Username\033[0m           |\033[34m UserID\033[0m|\033[34m GroupID\033[0m |\033[34m Home\033[0m                             |\033[34m Shell\033[0m             |"
    print "_______________________________________________________________________________________________ ";
            }

{
 printf ("| \033[33m%-18s\033[0m | \033[35m%-5s\033[0m |\033[35m%-8s\033[0m |\033[35m%-33s\033[0m |\033[35m%-18s\033[0m |\n", $1, $3, $4, $6, $7);
}

    END {
    print("_______________________________________________________________________________________________ ");
        }' pass.txt 
