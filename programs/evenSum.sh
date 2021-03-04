#! /bin/bash -x

for (( counter=1; counter <= 50; counter++ ))
do
	even=$(( counter*2 ))
	sum=$(( sum+even ))
done
echo "sum of even numbers" $sum
