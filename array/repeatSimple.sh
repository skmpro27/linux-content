
#! /bin/bash -x

declare -a digit

sum=0
for (( i=1; i < 100 ; i+=1 ))
do
	mod=$(( $i%11 ))
	if [ $mod -eq 0 ]
	then
		echo $i
	fi
done
