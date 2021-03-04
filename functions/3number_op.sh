
#! /bin/bash -x

read -p "Enter 1st number " num1
read -p "Enter 2nd number " num2
read -p "Enter 3rd number " num3

function add()
{
	result=$(( $1+$2+$3 ))
	echo $result
}
function sub()
{
	result=$(( $1-$2-$3 ))
	echo $result
}
function multi()
{
	result=$(( $1*$2*$3 ))
	echo $result
}
function div()
{
	result=$(( $1/$2 ))
	echo $result
}
function mod()
{
	result=$(( $1%$2 ))
	echo $result
}
value=$( add $num1 $num2 $num3 )
echo "add value" $value
value=$( sub $num1 $num2 $num3 )
echo "sub value" $value
value=$( multi $num1 $num2 $num3 )
echo "multi value" $value
value=$( div $num1 $num2 )
echo "div value" $value
value=$( mod $num1 $num2 )
echo "mod value" $value
