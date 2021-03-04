
#! /bin/bash -x

for (( counter=5; counter <= 50; counter++ ))
do
	even=$(( counter*2 ))
	echo $even
done
