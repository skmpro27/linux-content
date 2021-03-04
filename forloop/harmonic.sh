
#! /bin/bash -x

read -p "Enter number of terms " number

function harmonic()
{
	for (( counter=1; counter <= $1; counter+=1 ))
	do
		echo 1/$counter
		if [ $counter -ne $1 ]
		then
			echo +
		fi
	done
}

value=$( harmonic $number )
echo $value
