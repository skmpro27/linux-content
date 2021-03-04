#! /bin/bash -x

read -p "Enter 1st number " num1
read -p "Enter 2nd number " num2
sum=$(( num1+num2 ))
case $sum in
	100)
	echo "sum is 100"
	;;
	200)
	echo "sum is 200"
	;;
	300)
	echo "sum is 300"
	;;
	*)
	echo "none of the above"
	;;
esac
