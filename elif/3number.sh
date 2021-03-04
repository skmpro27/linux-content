
#! /bin/bash -x

read -p "Enter 1st number " num1
read -p "Enter 2nd number " num2
read -p "Enter 3rd number " num3
operation1=$(( num1+num2*num3 ))
operation2=$(( num1%num2+num2 ))
operation3=$(( num3+num1/num2 ))
operation4=$(( num1*num2+num3 ))

echo "Result of 1st operation" $operation1
echo "Result of 2nd operation" $operation2
echo "Result of 3rd operation" $operation3
echo "Result of 4th operation" $operation4

if [ $operation1 -gt $operation2 -a $operation1 -gt $operation3 -a $operation1 -gt $operation4 ]
then
	echo $operation1 "is maximum"
elif [ $operation2 -gt $operation3 -a $operation2 -gt $operation4 ]
then
	echo $operation2 "is maximum"
elif [ $operation3 -gt $operation4 ]
then
	echo $operation3 "is maximum"
else
	echo $operation4 "is maximum"
fi
if [ $operation1 -lt $operation2 -a $operation1 -lt $operation3 -a $operation1 -lt $operation4 ]
then
	echo $operation1 "is minimum"
elif [ $operation2 -lt $operation3 -a $operation2 -lt $operation4 ]
then
	echo $operation2 "is minimum"
elif [ $operation3 -lt $operation4 ]
then
	echo $operation3 "is minimum"
else
	echo $operation4 "is minimum"
fi
