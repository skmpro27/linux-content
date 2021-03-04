
#! /bin/bash -x

read -p "Enter a number " number
echo "1.Prime or not	2.even or not"
read -p "Enter your choice(1-2) " choice

function prime()
{
	flag=1
	for (( counter=2; counter < $1; counter+=1 ))
	do
		mod=$(( $1%counter ))
		if [ $mod -eq 0 ]
		then
			flag=0
			break
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "Not a prime number"
	else
		echo "Prime number"
	fi
}
function even()
{
	mod=$(( $1%2 ))
	if [ $mod -eq 1 ]
	then
		echo "Not a even number"
	else
		echo "Even number"
	fi
}

case $choice in
	1)
	value=$( prime $number )
	echo $value
	;;
	2)
	value=$( even $number )
	echo $value
	;;
	*)
	echo "Invalid number"
	;;
esac
