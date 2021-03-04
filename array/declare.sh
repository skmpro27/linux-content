
#! /bin/bash -x

declare -a cities
cities=(mumbai pune nashik nagpur)
echo ${cities[@]}
cities[3]="thane"
echo "after"
echo ${cities[@]}
echo ${cities[1]}

read -p "Enter the number of values" n
i=0
while [ $i -lt $n ]
do
	read cities[$i]
	i=$(( i+1 ))
done

for city in ${cities[@]}
do
	echo "city" $city
done

echo "length" ${#cities[@]}
echo "index" ${!cities[@]}

for index in ${!cities[@]}
do
	echo "index" $index "element" ${cities[$index]}
done
