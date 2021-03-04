
#! /bin/bash -x

declare -a arr
declare -a ar
arr=(1 2 3 5 8 32 13 5 7)
function sorting()
{
ar=($@)
check=1
while [ $check -eq 1 ]
do
        check=0
        for (( i=0; i < ${#ar[@]}-1; i+=1 ))
        do
                if [ ${ar[$i]} -gt ${ar[$i+1]} ]
                then
                        temp=${ar[$i]}
                        ar[$i]=${ar[$i+1]}
                        ar[$i+1]=$temp
                        check=1
                fi
        done
done
echo ${ar[@]}
}
value=$( sorting ${arr[@]} )
echo $value
