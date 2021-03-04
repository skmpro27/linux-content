
#! /bin/bash -x

read -p "Enter a number " number

function palin()
{
	num=$1
	rev_num=0
	while [ $num -gt 0 ]
	do
		digit=$(( num%10 ))
		rev_num=$(( rev_num*10 + digit ))
		num=$(( num/10 ))
	done
	if [ $1 -eq $rev_num ]
	then
		echo "Palindrome"
	else
		echo "not Palindrome"
	fi
}

value=$( palin $number )
echo $value

