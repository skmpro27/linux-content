
#! /bin/bash -x

read -p "Enter a number " number

flag=1;
for (( counter=2; counter < number/2 ; counter+=1 ))
do
	mod=$(( number%counter ))
	if [ $mod -eq 0 ]
	then
		flag=0
		break
	fi
done

if [ $flag -eq 0 ]
then
	echo "Not a prime number"
else
	echo "Prime number"
fi
