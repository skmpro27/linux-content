
#! /bin/bash -x

declare -a digit

sum=0
for (( i=1; i < 100 ; i+=1 ))
do
	j=0
	copy=$i
	digit[0]=0
	digit[1]=0
	while [ $copy -gt 0 ]
	do
		digit[$j]=$(( copy%10 ))
		copy=$(( copy/10 ))
		j=$(( j+1 ))
	done
	if [ $i -gt 9 -a ${digit[0]} -eq ${digit[1]} ]
	then
		echo $i
	fi
done
