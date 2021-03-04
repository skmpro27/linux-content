
#! /bin/bash

read -p "Enter folder name to check: " foldername

if [ -d $foldername ]
then
	echo $foldername "folder already exist"
else
	mkdir $foldername
	echo $foldername "is created"
fi
