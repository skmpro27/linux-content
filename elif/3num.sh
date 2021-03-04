#! /bin/bash -x

read -p "Enter 1st number " num1
read -p "Enter 2nd number " num2
read -p "Enter 3rd number " num3

operation1=$(( num1+num2*num3 ))
operation2=$(( num1%num2+num2 ))
operation3=$(( num3+num1/num2 ))
operation4=$(( num1*num2+num3 ))

max=$operation1
min=$operation1

for value in $operation2 $operation3 $operation4
do
	if [ $value -gt $max ]
	then
		max=$value
	elif [ $value -lt $min ]
	then
		min=$value
	fi
done

echo $max "is maximum"
echo $min "is minimum"
