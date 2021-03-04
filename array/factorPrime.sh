
#! /bin/bash -x

read -p "Enter a number " number

declare -a factor
i=2
j=0
while [ $number -gt 1 ]
do
	mod=$(( number%i ))
	if [ $mod -eq 0 ]
	then
		factor[$j]=$i
		number=$(( number/i ))
		i=$(( i-1 ))
		j=$(( j+1 ))
	fi
	i=$(( i+1 ))
done

echo ${factor[@]}
