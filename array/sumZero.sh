
#! /bin/bash -x

declare -a numbers

sum=0
for (( i=0; i < 3 ; i+=1 ))
do
	echo "Enter number" $(( i+1 ))
        read num
	numbers[$i]=$num
	sum=$(( sum+num ))
done

echo ${numbers[@]}

if [ $sum -eq 0 ]
then
	echo "Sum is ZERO"
else
	echo "Non ZERO"
fi
