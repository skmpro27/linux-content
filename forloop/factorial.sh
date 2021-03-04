
#! /bin/bash -x

read -p "Enter a number: " number
facto=1
for (( counter=1; counter <= number; counter+=1 ))
do
	facto=$(( counter*facto ))
done
echo $number"! =" $facto
