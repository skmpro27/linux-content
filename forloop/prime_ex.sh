
#! /bin/bash -x

echo "Enter a range"
read -p "from " start
read -p "to " end

for (( counter=start; counter <= end ; counter+=1 ))
do
	flag=1
	for (( inner_counter=2; inner_counter < counter ; inner_counter+=1 ))
	do
		mod=$(( counter%inner_counter ))
		if [ $mod -eq 0 ]
		then
			flag=0
			break
		fi
	done

	if [ $flag -eq 1 ]
	then
		echo $counter
	fi
done
