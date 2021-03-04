
#! /bin/bash -x

read -p "Enter first number " num1
read -p "Enter second number " num2
read -p "Enter third number " num3
sum=$(( num1+num2+num3 ))
multi=$(( num1*num2*num3 ))
diff=$(( num1-num2-num3 ))
div=$(( num1/num2 ))
mod=$(( num1%num2 ))

echo "the sum is " $sum
echo "the multi is " $multi
echo "the diff is " $diff
echo "the mod is " $mod
echo "the div is " $div
