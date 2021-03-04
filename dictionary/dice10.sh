
#! /bin/bash -x

declare -A dice

dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)

while [ ${dice[1]} -lt 10 -a ${dice[2]} -lt 10 -a ${dice[3]} -lt 10 -a ${dice[4]} -lt 10 -a ${dice[5]} -lt 10 -a ${dice[6]} -lt 10 ]
do
	random=$(( RANDOM%6+1 ))
	dice[$random]=$(( dice[$random]+1 ))
done

min=${dice[1]}
max=${dice[1]}
minkey=1
maxkey=1

for key in ${!dice[@]}
do
	echo $key "is repeated" ${dice[$key]}
	if [ $min -gt ${dice[$key]} ]
	then
		min=${dice[$key]}
		minkey=$key
	elif [ $max -lt ${dice[$key]} ]
	then
		max=${dice[$key]}
		maxkey=$key
	fi
done
echo ""
echo $maxkey "is repeated" ${dice[$maxkey]} "which is maximum"
echo $minkey "is repeated" ${dice[$minkey]} "which is minimum"

