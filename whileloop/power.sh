
#! /bin/bash -x

read -p "Enter a number: " number
power=2
conter=1

while [ counter -le number -o power -le 256 ]
do
	power=$(( power**counter ))
	echo "2^"$counter "=" $power
	counter=$(( counter+1 ))
done
