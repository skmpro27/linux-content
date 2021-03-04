
#! /bin/bash -x

num1=$(( RANDOM%900+100 ))
num2=$(( RANDOM%900+100 ))
num3=$(( RANDOM%900+100 ))
num4=$(( RANDOM%900+100 ))
num5=$(( RANDOM%900+100 ))
max=$num1
min=$num2
for number in $num2 $num3 $num4 $num5
do
	if [ $max -lt $number ]
	then
		max=$number
	elif [ $min -gt $number ]
	then
		min=$number
	fi
done
echo "Random number 1 :" $num1
echo "Random number 2 :" $num2
echo "Random number 3 :" $num3
echo "Random number 4 :" $num4
echo "Random number 5 :" $num5
echo ""
echo "Maximum number is" $max
echo "Minimum number is" $min
