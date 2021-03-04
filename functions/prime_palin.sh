
#! /bin/bash -x

read -p "Enter a number " number

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
                echo "and Palindrome"
        else
                echo "and not Palindrome"
        fi
}
function statement()
{
	value=$( prime $number )
	echo $value
	value=$( palin $number )
	echo $value
}

string=$( statement )
echo $string
