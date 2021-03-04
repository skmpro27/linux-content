
#! /bin/bash -x

read -p "Enter first number " num1
read -p "Enter second number " num2
read -p "Enter third number " num3

if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
then
	echo $num1 "is greater than" $num2 "and" $num3
elif [ $num2 -gt $num3 ]
then
	echo $num2 "is greater than" $num1 "and" $num3
else
	echo $num3 "is greater than" $num1 "and" $num2
fi
