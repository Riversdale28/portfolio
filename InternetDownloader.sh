#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  


read -p 'Type the name of a website to download  or exit to quit : ' web_name
read -p "Type the name of the directory as download location : " web_dir
echo 
#echo $web_name

while [ "$web_name"  != "exit" ]
do
    wget -P ./$web_dir $web_name
    read -p 'Type the name of a website to download  or exit to quit : ' web_name
done
  echo
  echo "Quitting the download ...  "
  echo  "Bye"
  
exit 0