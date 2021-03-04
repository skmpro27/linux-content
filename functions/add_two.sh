#! /bin/bash -x

read -p "Enter 1st number " num1
read -p "Enter 2nd number " num2
read -p "Enter 3rd number " num3

function add()
{
	result=$(( $1+$2+$3 ))
	count=$#
	echo $result
	echo $count
}

value=$( add $num1 $num2 $num3 )
echo "add value" $value
