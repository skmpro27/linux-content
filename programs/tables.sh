
#! /bin/bash -x

for (( counter=1; counter <= 10; counter++ ))
do
	for (( inner_counter=1; inner_counter <= 10; inner_counter++ ))
	do
		multi=$(( counter*inner_counter ))
		echo $counter "X" $inner_counter "=" $multi
	done
	echo " "
done
