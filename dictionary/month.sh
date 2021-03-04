
#! /bin/bash -x

declare -A month
declare -A count

month=(["january92"]=1 ["february92"]=2 ["march92"]=3 ["april92"]=4 ["may92"]=5 ["june92"]=6 ["july92"]=7 ["august92"]=8 
["september92"]=9 ["october92"]=10 ["november92"]=11 ["december92"]=12 ["january93"]=13 ["february93"]=14 ["march93"]=15 
["april93"]=16 ["may93"]=17 ["june93"]=18 ["july93"]=19 ["august93"]=20 ["september93"]=21 ["october93"]=22 
["november93"]=23 ["december93"]=24)

for (( i=1; i<=24; i+=1 ))
do
	count[$i]=0
done

for (( i=1; i<=50; i+=1 ))
do
	random=$(( RANDOM%24+1 ))
	count[$random]=$(( count[$random]+1 ))
done

for key in ${!month[@]}
do
	value=${month[$key]}
        echo $key "=>" ${count[$value]} "birthday"
done
