
#! /bin/bash
for filename in  `ls *.txt`
do
	foldername=`echo $filename | awk -F. '{print $1}'`
	if [ -d $foldername ]
	then
		continue
	fi

	mkdir $foldername
	cp $filename $foldername
	echo $filename "copied to " $foldername
done
