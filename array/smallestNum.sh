
#! /bin/bash -x

declare -a numbers

i=0
while [ $i -lt 5 ]
do
	numbers[$i]=$(( RANDOM ))
	i=$(( i+1 ))
done

echo ${numbers[@]}

min=${numbers[0]}

for num in ${numbers[@]}
do
	if [ $num -lt $min ]
	then
		min=$num
	fi
done

echo "smallest number is" $min
