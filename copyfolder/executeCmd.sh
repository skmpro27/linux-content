
#! /bin/bash -x

Hello
if [ $? -eq 0 ]
then
	echo "Command executed"
else
	echo "Command not found"
fi
echo ""
ls
if [ $? -eq 0 ]
then
	echo "Command executed"
else
	echo "Command not found"
fi
