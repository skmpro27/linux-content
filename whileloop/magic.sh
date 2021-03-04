
#! /bin/bash -x

read -p "Think a number between 1-100 and press 'y' " reply
reply=n
lower=1
upper=100
mid=$(( RANDOM%100+1 ))
while [ $reply == "n" ]
do
	echo $mid "is this is your number (y/n) ??"
	read reply
	if [ $reply == "n" ]
	then
		read -p "Press 'g' greater or 'l' lesser than this number " again
	fi

	if [ $again == "g" ]
	then
		lower=$mid
	else
		upper=$mid
	fi
	mid=$(( lower+upper ))
	mid=$(( mid/2 ))
done
