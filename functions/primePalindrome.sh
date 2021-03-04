
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
		echo false
	else
		echo true
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
                echo true
        else
                echo false
        fi
}

paValue=$( palin $number )
prValue=$( prime $number )
if [ $paValue == "true" -a $prValue == "true" ]
then
	echo "Palindrome and Prime"
elif [ $paValue == "true" ]
then
	echo "Palindrome"
elif [ $prValue == "true" ]
then
	echo "Prime"
else
	echo "Not Palindrome and not Prime"
fi
