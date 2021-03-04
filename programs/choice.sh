
#! /bin/bash -x
read -p "Enter choice 1 or 2" choice
case $choice in
	1)
	echo "you have chosen 1 do some operation"
	echo "you have chosen 1st option"
	;;
	2)
	echo "you have shosen 2nd option"
	;;
	*)
	echo "number is not valid"
	;;
esac
