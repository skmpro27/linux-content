
#! /bin/bash -x

echo "1. Feet to Inch		3. Inch to Feet"
echo "2. Feet to Meter        4. Meter to Feet"
read -p "Enter your choice(1-4): " choice
read -p "Enter value: " value
case $choice in
	1)
        conv=$(( value*12 ))
	echo $value"feet =" $conv"inch"
	;;
	2)
        conv=$(( value*381/1250 ))
	echo $value"feet =" $conv"meter"
	;;
	3)
        conv=$(( value/12 ))
	echo $value"inch =" $conv"feet"
	;;
	4)
        conv=$(( value*1250/381 ))
	echo $value"meter =" $conv"feet"
	;;
	*)
        echo "Invalid choice"
	;;
esac

