
#! /bin/bash -x

declare -a numbers

i=0
while [ $i -lt 10 ]
do
	numbers[$i]=$(( RANDOM%900+100 ))
	i=$(( i+1 ))
done

echo ${numbers[@]}

i=0
temp=0
limit=$(( ${#numbers[@]}-1 ))
while [ $i -lt $(( limit-5 )) ]
do
	for (( j=0; j < limit-$i ; j+=1 ))
	do
		if [ ${numbers[$j]} -lt ${numbers[$j+1]} ]
		then
			temp=${numbers[$j]}
			numbers[$j]=${numbers[$j+1]}
			numbers[$j+1]=$temp
		fi
	done
	i=$(( i+1 ))
done
echo ""
echo ${numbers[@]}
echo ""
echo "2nd largest number is" ${numbers[1]}
echo "2nd smallest number is" ${numbers[8]}
