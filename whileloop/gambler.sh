
#! /bin/bash -x

bet=100
count=0
win_count=0
while [ $bet -lt 200 -a $bet -gt 0 ]
do
	game=$(( RANDOM%2 ))
	if [ $game -eq 1 ]
	then
		bet=$(( bet+1 ))
		win_count=$(( win_count+1 ))
	else
		bet=$(( bet-1 ))
	fi
	count=$(( count+1 ))
done
if [ $bet -eq 200 ]
then
	echo "You won Rs.200"
else
	echo "No more money"
fi
echo "Number of wins" $win_count
echo "Number of games" $count
