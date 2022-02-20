#!/bin/bash


echo "Arithmetic commands on 2 variables" 

echo " What would you like to do ? "

echo " 1. Add "
echo " 2. Divide "
echo " 3. Multiply " 
echo " 4. Subtract"
echo

read -p 'Choose arithmetic option : ' choice_var

read -p 'type first number :  num_1  ' num1
read -p 'type second number : num_2  ' num2

echo

case $choice_var in

    1) sum=$(echo $num1 + $num2 | bc)
        echo "scale=2; $sum" | bc
        echo -e "Result: \033[34m"$sum"\e[0m"
        echo
    ;;

    2) sum=$(echo $num1 '/' $num2 | bc)
        echo "scale=2; $sum" | bc
        echo -e "Result: \033[32m"$sum"\e[0m"
        echo
    ;;

    3) sum=$(echo $num1 '*' $num2 | bc)
        echo "scale=2; $sum" | bc
        echo -e "Result: \033[36m"$sum"\e[0m"
        echo
    ;;

    4) sum=$(echo $num1 '-' $num2 | bc)
        echo "scale=2; $sum" | bc
        echo -e "Result: \033[37m"$sum"\e[0m"
        echo
    ;;

esac 

exit 0
