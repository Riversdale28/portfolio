#!/bin/bash
 
# Author:  Margot Mills
# Date:  11 Feb 2022
# Version:  

# Gets info about networking from the ifconfig command

net_info="$(ifconfig)"

# Parse out the ip address lines using sed
# The substitution is only made on inet(sp) and not inet6

addresses=$(echo "$net_info" | sed -n '/inet / {

    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address:/
    p
}')

# Format output
# echo -e allows interpretation of \ command

echo -e "IP addresses on this computer are:\n$addresses"