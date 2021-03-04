
#! /bin/bash -x

Head=0
Tail=0
while [ $Head -lt 11 -a $Tail -lt 11 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 0 ]
	then
		Head=$(( Head+1 ))

	else
		Tail=$(( Tail+1 ))
	fi
done
if [ $Head -eq 11 ]
then
	echo "Heads wins"
else
	echo "Tails wins"
fi

echo "Heads count" $Head
echo "Tails count" $Tail
