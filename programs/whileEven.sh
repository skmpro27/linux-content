
#! /bin/bash -x

limit=50
number=5
while [ $number -le $limit ]
do
	even=$(( number*2 ))
	echo $even
	number=$(( number+1 ))
done
