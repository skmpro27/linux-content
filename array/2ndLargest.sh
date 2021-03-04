
#! /bin/bash -x

declare -a numbers

i=0
while [ $i -lt 10 ]
do
	numbers[$i]=$(( RANDOM%900+100 ))
	i=$(( i+1 ))
done

echo ${numbers[@]}

i=1
min1=${numbers[0]}
max1=${numbers[0]}
while [ $i -lt ${#numbers[@]} ]
do
	if [ ${numbers[$i]} -gt $max1 ]
	then
		max1=${numbers[$i]}
	elif [ ${numbers[$i]} -lt $min1 ]
	then
		min1=${numbers[$i]}
	fi
	i=$(( i+1 ))
done

i=0
max2=0
min2=1000
while [ $i -lt ${#numbers[@]} ]
do
	if [ ${numbers[$i]} -gt $max2 -a ${numbers[$i]} -lt $max1 ]
	then
		max2=${numbers[$i]}
	elif [ ${numbers[$i]} -lt $min2 -a ${numbers[$i]} -gt $min1 ]
	then
		min2=${numbers[$i]}
	fi
	i=$(( i+1 ))
done
echo ""
echo "1st largest number is" $max1
echo "1st smallest number is" $min1
echo ""
echo "2nd largest number is" $max2
echo "2nd smallest number is" $min2
