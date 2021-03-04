
#! /bin/bash -x

read -p "Enter a number: " number
power=1
for (( counter=1; counter <= number; counter+=1 ))
do
	power=$(( power*2 ))
	echo "2^"$counter "=" $power
done
