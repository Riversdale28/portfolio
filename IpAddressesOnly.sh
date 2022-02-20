#!/bin/bash
 
# Author:  Margot Mills
# Date:  12 Feb 2022
# Version:  

net_info="$(ifconfig)"

# Parse out the ip address lines using sed
# -n suppresses automatic printing of pattern space
# p is command for printing the data from the pattern buffer

addresses=$(echo "$net_info" | sed -n '/inet / {

    s/inet/IP Address:/
       
    p
}')

# Format output

echo "$addresses" > IpFile.txt

# Two ways of just extracting the IP Addresses are grep and awk...

# grep prints the contents of a file matching specific content
# -o option allows to print only the pattern matched.  \ used to prevent { treated as literal
echo "Using grep, output is: " 
grep -o '^.\{30\}' IpFile.txt
echo ""

# Print the first 30 chars from , the entire line is $0, 0=starting position, 30 is offset
echo "Using awk, the output is: "
awk '{print substr($0,0,30);}' IpFile.txt

exit 0

