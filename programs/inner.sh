
#! /bin/bash -x

for (( counter=1; counter < 5; counter++ ))
do
	for (( inner_counter=1; inner_counter < 5; inner_counter++ ))
	do
		echo "counter" $counter "inner counter" $inter_counter
	done
done
