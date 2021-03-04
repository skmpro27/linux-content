
#! /bin/bash
read -p "enter the first number" num1
read -p "enter the second number" num2
sum=$(( num1+num2 ))
diff=$(( num1-num2 ))
echo "the sum is " $sum
echo "the diff is " $diff
