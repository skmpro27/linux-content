
#! /bin/bash -x

read -p "enter the number" number

if [ $number -gt 200 -a $number -lt 300 ]
then
	echo "number is greater than 200 and lesser than 300"
elif [ $number -gt 100 ]
then
	echo "number is greater than 100"
else
	echo "number is invalid"
fi
