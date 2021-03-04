
#! /bin/bash -x

read -p "Enter a number: " number
counter=1
power=1

while [ $counter -le $number -a $power -lt 256 ]
do
	power=$(( 2**counter ))
	echo "2^"$counter "=" $power
	counter=$(( counter+1 ))
done
