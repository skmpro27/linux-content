
#! /bin/bash -x

random=$(( RANDOM ))
limit=1000
number=1
even=0
while [ $number -le $limit -a $even -le $random ]
do
	even=$(( number*2 ))
	echo $even
	number=$(( number+1 ))
done
echo $random
