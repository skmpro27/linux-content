
#! /bin/bash -x

echo "1.degC to degF	2.degF to degC"
read -p "Enter your choice(1-2) " choice
read -p "Enter a temprature " temp

function degF()
{
	deg=$(( $1*9/5 ))
	deg=$(( deg+32 ))
	echo $1 "degC =" $deg "degF"
}
function degC()
{
	deg=$(( $1-32 ))
	deg=$(( deg*5/9 ))
	echo $1 "degF =" $deg "degC"
}

case $choice in
	1)
	if [ $temp -gt 0 -a $temp -lt 100 ]
	then
		value=$( degF $temp )
		echo $value
	else
		echo "Temprature is not within 0 - 100 degC"
	fi
	;;
	2)
	if [ $temp -gt 32 -a $temp -lt 212 ]
	then
		value=$( degC $temp )
		echo $value
	else
		echo "Temprature is not within 32 - 212 degF"
	fi
	;;
	*)
	echo "Invalid choice"
	;;
esac
