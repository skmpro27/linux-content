
#!/bin/bash -x

for file in `ls *.log`
do
	firstPart=`echo $file | awk -F- '{print $1}'`
	lastPart=`echo $file | awk -F. '{print "."$2".1"}'`
	renamed=$firstPart$lastPart
	echo $file "renamed to" $renamed
	mv $file $renamed
done
