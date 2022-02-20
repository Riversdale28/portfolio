#!/bin/bash

# Author:  Margot Mills
# Date:  31 January 2022
# Version No: 

secret='shhh' #Don't tell anyone!
echo $secret
#if the user types in the correct secret, tell them they got it right!

read -p 'Enter the secret : ' REPLY

if [ ls
$secret" = "$REPLY"]; then
echo "You got it right!"
correct=true

else echo "You got it wrong : "
correct=false
fi

read -sp 'what's the secret code?' correct

echo 

case $correct in

*)
echo "Go Away!" #people who get it wrong need to be told to go away!
;;

true)
echo "you have unlocked the secret menu!"
#TODO: add a secret menu for people in the know.
;;

esac