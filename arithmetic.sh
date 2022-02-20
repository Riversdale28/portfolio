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
    1) sum=$(expr $num1 '+' $num2);;
    
    2) sum=$(expr $num1 '/' $num2);;

    3) sum=$(expr $num1 '*' $num2);;

    4) sum=$(expr $num1 '-' $num2);;

esac 

echo "value of sum is : " $sum 
