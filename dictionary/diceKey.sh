
#! /bin/bash -x

declare -A dice

dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)

while [ ${dice[1] -le 10 -a ${dice[2] -le 10 -a ${dice[3] -le 10 -a ${dice[4] -le 10 -a ${dice[5] -le 10 -a ${dice[6] -le 10 ]
do
	random=$(( RANDOM%6+1 ))
	dice[$random]=$(( dice[$random]+1 ))
done

for key in ${!dice[@]}
do
        echo $key "repeated" ${dice[$key]} "times"
done

