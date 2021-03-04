
#! /bin/bash -x

read -p "Enter month numeric value: " month
read -p "Enter day : " day

if [ $month -eq 3 -a $day -gt 20 -o $month -gt 3 -a $month -lt 6 -o $month -eq 6 -a $day -lt 20 ]
then
	echo "true"
else
	echo "false"
fi
