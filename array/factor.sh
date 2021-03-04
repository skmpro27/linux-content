
#! /bin/bash -x

read -p "Enter a number " number

for (( counter=2; counter <= number ; counter+=1 ))
do
	mod=$(( number%counter ))
	if [ $mod -eq 0 ]
	then
		echo $counter
		number=$(( number/counter ))
		counter=$(( counter-1 ))
	fi
done
