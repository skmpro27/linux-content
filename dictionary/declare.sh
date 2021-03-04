
#! /bin/bash -x

declare -A cities
cities=(["maha"]="1" ["up"]="2" ["tn"]="3")
for key in ${!cities[@]}
do
	echo "key" $key "value" ${cities[$key]}
done
echo "value" ${cities[@]}
echo ${cities[maha]}
