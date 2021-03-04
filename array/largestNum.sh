
#! /bin/bash -x

declare -a numbers

i=0
while [ $i -lt 5 ]
do
	numbers[$i]=$(( RANDOM ))
	i=$(( i+1 ))
done

echo ${numbers[@]}

max=0
for num in ${numbers[@]}
do
	if [ $num -gt $max ]
	then
		max=$num
	fi
done
echo "Largest number is" $max
